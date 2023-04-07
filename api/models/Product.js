const db = require('../db');

class Product {
  static async create({ title, desc, img, categories, size, color, price, inStock = true }) {
    const result = await db.query(
      'INSERT INTO products (title, description, image, categories, size, color, price, in_stock) VALUES (?, ?, ?, ?, ?, ?, ?, ?)',
      [title, desc, img, JSON.stringify(categories), JSON.stringify(size), JSON.stringify(color), price, inStock]
    );
    return result[0].insertId;
  }

  static async findById(productId) {
    const product = await db.query('SELECT * FROM products WHERE id = ?', [productId]);
    return product[0];
  }

  static async findAll() {
    const products = await db.query('SELECT * FROM products');
    return products;
  }

  static async update(productId, data) {
    const fields = ['title', 'description', 'image', 'categories', 'size', 'color', 'price', 'in_stock'];
    const updates = fields.filter(field => data.hasOwnProperty(field)).map(field => `${field} = ?`).join(', ');
    const values = fields.filter(field => data.hasOwnProperty(field)).map(field => data[field]);

    if (updates.length > 0) {
      values.push(productId);
      await db.query(`UPDATE products SET ${updates} WHERE id = ?`, values);
    }
  }

  static async delete(productId) {
    await db.query('DELETE FROM products WHERE id = ?', [productId]);
  }

  static async findAllNew(limit = 1) {
    const products = await db.query('SELECT * FROM products ORDER BY created_at DESC LIMIT ?', [limit]);
    return products;
  }
  
  static async findAllByCategory(category) {
    const products = await db.query('SELECT * FROM products WHERE JSON_CONTAINS(categories, ?)', [`"${category}"`]);
    return products;
  }  
}

module.exports = Product;
