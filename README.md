# TechBay | Electronics
# **Introduction**

This is a Laravel E-commerce Project - CRUD.

> Technology Used : Laravel-8, Bootstrap, JavaScript, Ajax

# **Features**

-   Responsive.
-   Authentication.
-   Sign in, log out.
-   Follow items, unfollow items (Wishlist).
-   Distinguish admin and normal user.
-   Contact.
-   Product:
    -   Search, filter.
    -   Review, rating.
    -   Multiple image.
    -   Sizes, color.
    -   Gender.
-   Payment:
    -   Coupon, discount.
    -   Form of payment.
    -   Return order.
    -   Order history.
-   Admin-page:
    -   Statistics of registered people and number of products, orders.
    -   Table showing users, products,  messages and reviews.
    -   Order confirmation and management.
    -   Create a new items.
-   ...

## Installation
```bash
composer install
```

An application key can be generated with the command:
```bash
php artisan key:generate
```

Create a database with the same name as the database defined in the .env file:
```bash
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=ecommerce
DB_USERNAME=root
DB_PASSWORD=
```

You can import file 'clothing_website.sql' in folder DB to use available data, or

You can create new data with migrate the database:
```bash
php artisan migrate
```

Run the artisan serve command:
```bash
php artisan serve
```

Proceed to:
```bash
http://127.0.0.1:8000
```

Login as customer: user@gmail.com - pass: 12345678

Login as admin: admin@gmail.com - pass: 12345678

## License
This project is open-source and licensed under the [MIT](https://choosealicense.com/licenses/mit/)
