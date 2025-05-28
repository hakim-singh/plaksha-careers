# Plaksha University Careers Portal

![Plaksha Logo](https://plaksha.edu.in/images/logo-new.png)

A Laravel-based job portal for Plaksha University with admin management capabilities.

## Features

- Public job listings page
- Detailed job view pages
- Admin panel for job management
- Fully responsive design
- Rich text job descriptions
- Job status management (open/closed)

## Technologies Used

- Laravel 12
- MySQL
- Tailwind CSS
- Blade Templates
- Vite (for asset bundling)

## Installation

### Prerequisites
- PHP 8.1+
- Composer
- Node.js 16+
- MySQL 5.7+

### Setup Steps

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/plaksha-careers.git
   cd plaksha-careers

   _______________________________________________
  1.  Install PHP dependencies:

composer install

2. Install JavaScript dependencies:
npm install
3. Generate application key:
php artisan key:generate
4. Configure database in .env
DB_DATABASE=plaksha_careers
DB_USERNAME=root
DB_PASSWORD=


5. Run migrations and seeders:

php artisan migrate --seed

6. Build assets:

npm run dev

7. Start development server:

php artisan serve

9. Access admin routes:

Job listings: /admin/careers

Create job: /admin/careers/create