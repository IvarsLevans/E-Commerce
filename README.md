<h1>TechBay | Electronics</h1>

<h2>📚 Table of Contents</h2>
<ol>
    <li><a href="#customer">👤 Customer</a></li>
    <li><a href="#admin">🛠️ Admin</a></li>
    <li><a href="#introduction">📖 Introduction</a></li>
    <li><a href="#features">🌟 Features</a></li>
    <li><a href="#installation">🚀 Installation</a></li>
    <li><a href="#login">🔑 Login Credentials</a></li>
    <li><a href="#license">📄 License</a></li>
</ol>

<h2 id="customer">👤 Customer</h2>
<p align="center">
    <img src="https://user-images.githubusercontent.com/78017471/234044699-3c26cdc1-e192-49b7-b8ff-65c593cfc0ff.png" alt="Customer Screenshot" width="80%">
</p>

<h2 id="admin">🛠️ Admin</h2>
<p align="center">
    <img src="https://user-images.githubusercontent.com/78017471/234044940-7b8d4c11-6dd8-42f5-913a-faa35b4e2dc3.png" alt="Admin Screenshot" width="80%">
</p>

<h2 id="introduction">📖 Introduction</h2>
<p>Welcome to TechBay, a Laravel-based e-commerce project utilizing CRUD operations. This project aims to provide a seamless online shopping experience for customers and efficient management tools for administrators.</p>
<blockquote>
    <p>Technology Stack: Laravel, Bootstrap, JavaScript, Ajax</p>
</blockquote>

<h2 id="features">🌟 Features</h2>
<ul>
    <li>User authentication and authorization</li>
    <li>Distinct customer and admin privileges</li>
    <li>Sign in and log out functionality</li>
    <li>Wishlist management: follow and unfollow items</li>
    <li>Contact form for inquiries</li>
    <li>Product details:
        <ul>
            <li>Reviews and ratings</li>
            <li>Multiple image display</li>
            <li>Color selection</li>
            <li>Brand information</li>
        </ul>
    </li>
    <li>Payment options:
        <ul>
            <li>Coupon and discount integration</li>
            <li>Multiple payment methods</li>
            <li>Order history tracking</li>
        </ul>
    </li>
    <li>Admin dashboard:
        <ul>
            <li>Overview of registered users, product count, and orders</li>
            <li>Tables displaying users, products, messages, and reviews</li>
            <li>Order confirmation and management</li>
            <li>Item creation and management</li>
        </ul>
    </li>
</ul>

<h2 id="installation">🚀 Installation</h2>
<p>Follow these steps to install and run the project:</p>
<ol>
    <li>Clone the repository and navigate to the project directory.</li>
    <li>Run <code>composer install</code> to install the required dependencies.</li>
    <li>Generate an application key using the command: <code>php artisan key:generate</code></li>
    <li>Create a database with the same name as the database defined in the <code>.env.example</code> file:</li>
    <pre><code>DB_CONNECTION=mysql
    DB_HOST=127.0.0.1
    DB_PORT=3306
    DB_DATABASE=ecommerce
    DB_USERNAME=root
    DB_PASSWORD=
    </code></pre>
    <li>Import the <code>ecommerce.sql</code> file from the DB folder to use available data, or create new data by migrating the database using the command: <code>php artisan migrate</code></li>
    <li>Start the local development server by running <code>php artisan serve</code></li>
    <li>Access the project in your browser at: <code>http://127.0.0.1:8000</code></li>

</ol>
<h2 id="login">🔑 Login Credentials</h2>
<table>
    <thead>
        <tr>
            <th>User Type</th>
            <th>Email</th>
            <th>Password</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Customer</td>
            <td>user@gmail.com</td>
            <td>12345678</td>
        </tr>
        <tr>
            <td>Admin</td>
            <td>admin@gmail.com</td>
            <td>12345678</td>
        </tr>
    </tbody>
</table>
<h2 id="license">📄 License</h2>
<p>This project is open-source and licensed under the <a href="https://choosealicense.com/licenses/mit/" target="_blank" rel="noopener noreferrer">MIT</a> license.</p>
