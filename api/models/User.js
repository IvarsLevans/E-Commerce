const db = require('../db');

class User {
  static async create({ username, email, password, isAdmin = false, img }) {
    const result = await db.query(
      'INSERT INTO users (username, email, password, is_admin, img) VALUES (?, ?, ?, ?, ?)',
      [username, email, password, isAdmin, img]
    );
    return result[0].insertId;
  }

  static async findById(userId) {
    const user = await db.query('SELECT * FROM users WHERE id = ?', [userId]);
    return user[0];
  }

  static async findByUsername(username) {
    const user = await db.query('SELECT * FROM users WHERE username = ?', [username]);
    return user[0];
  }

  static async findByEmail(email) {
    const user = await db.query('SELECT * FROM users WHERE email = ?', [email]);
    return user[0];
  }

  static async findAll() {
    const users = await db.query('SELECT * FROM users');
    return users;
  }

  static async update(userId, data) {
    const fields = ['username', 'email', 'password', 'is_admin', 'img'];
    const updates = fields.filter(field => data.hasOwnProperty(field)).map(field => `${field} = ?`).join(', ');
    const values = fields.filter(field => data.hasOwnProperty(field)).map(field => data[field]);

    if (updates.length > 0) {
      values.push(userId);
      await db.query(`UPDATE users SET ${updates} WHERE id = ?`, values);
    }
  }

  static async delete(userId) {
    await db.query('DELETE FROM users WHERE id = ?', [userId]);
  }

  static async aggregate() {
    const lastYear = new Date();
    lastYear.setFullYear(lastYear.getFullYear() - 1);
    const [results] = await db.query(`
      SELECT MONTH(createdAt) as month, COUNT(*) as total
      FROM users
      WHERE createdAt >= ?
      GROUP BY month
      ORDER BY month ASC
    `, [lastYear]);
    return results.map(row => ({ _id: row.month, total: row.total }));
  }
}

module.exports = User;
