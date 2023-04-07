const db = require('../db');

class Order {
  static async create({ userId, products, amount, address, status = 'pending' }) {
    const result = await db.query(
      'INSERT INTO orders (user_id, amount, address, status) VALUES (?, ?, ?, ?)',
      [userId, amount, JSON.stringify(address), status]
    );
    const orderId = result[0].insertId;

    const orderProducts = products.map(product => [orderId, product.productId, product.quantity]);
    await db.query('INSERT INTO order_products (order_id, product_id, quantity) VALUES ?', [orderProducts]);

    return orderId;
  }

  static async findById(orderId) {
    const order = await db.query('SELECT * FROM orders WHERE id = ?', [orderId]);
    if (order.length > 0) {
      const products = await db.query('SELECT * FROM order_products WHERE order_id = ?', [orderId]);
      order[0].products = products;
    }
    return order[0];
  }

  static async findAll() {
    const orders = await db.query('SELECT * FROM orders');
    return orders;
  }

  static async update(orderId, data) {
    const fields = ['user_id', 'amount', 'address', 'status'];
    const updates = fields.filter(field => data.hasOwnProperty(field)).map(field => `${field} = ?`).join(', ');
    const values = fields.filter(field => data.hasOwnProperty(field)).map(field => data[field]);

    if (updates.length > 0) {
      values.push(orderId);
      await db.query(`UPDATE orders SET ${updates} WHERE id = ?`, values);
    }
  }

  static async delete(orderId) {
    await db.query('DELETE FROM orders WHERE id = ?', [orderId]);
  }

  static async getMonthlyIncome(productId) {
    const date = new Date();
    const lastMonth = new Date(date.setMonth(date.getMonth() - 1));
    const previousMonth = new Date(date.setMonth(date.getMonth() - 2));
  
    const query = productId ? `
      SELECT MONTH(o.createdAt) as month, SUM(o.amount) as total
      FROM orders o
      JOIN order_products op ON o.id = op.order_id
      WHERE o.createdAt >= ? AND o.createdAt <= ? AND op.product_id = ?
      GROUP BY month
      ORDER BY month ASC
    ` : `
      SELECT MONTH(createdAt) as month, SUM(amount) as total
      FROM orders
      WHERE createdAt >= ? AND createdAt <= ?
      GROUP BY month
      ORDER BY month ASC
    `;
  
    const [results] = await db.query(query, productId ? [previousMonth, lastMonth, productId] : [previousMonth, lastMonth]);
    return results.map(row => ({ _id: row.month, total: row.total }));
  }  
}

module.exports = Order;