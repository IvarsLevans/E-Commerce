const db = require('../db');

class Cart {
  static async create({ userId }) {
    const result = await db.query(
      'INSERT INTO carts (user_id) VALUES (?)',
      [userId]
    );
    return result[0].insertId;
  }

  static async findByUserId(userId) {
    const cart = await db.query('SELECT * FROM carts WHERE user_id = ?', [userId]);
    if (cart.length > 0) {
      const products = await db.query('SELECT * FROM cart_products WHERE cart_id = ?', [cart[0].id]);
      cart[0].products = products;
    }
    return cart[0];
  }

  static async addProduct(cartId, { productId, quantity = 1 }) {
    await db.query(
      'INSERT INTO cart_products (cart_id, product_id, quantity) VALUES (?, ?, ?)',
      [cartId, productId, quantity]
    );
  }

  static async updateProduct(cartId, productId, quantity) {
    await db.query(
      'UPDATE cart_products SET quantity = ? WHERE cart_id = ? AND product_id = ?',
      [quantity, cartId, productId]
    );
  }

  static async removeProduct(cartId, productId) {
    await db.query(
      'DELETE FROM cart_products WHERE cart_id = ? AND product_id = ?',
      [cartId, productId]
    );
  }

  static async delete(cartId) {
    await db.query('DELETE FROM carts WHERE id = ?', [cartId]);
  }
}

module.exports = Cart;
