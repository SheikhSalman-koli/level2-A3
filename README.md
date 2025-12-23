# Vehicle Rental Management System (SQL Project)

## 📌 Project Overview
This project demonstrates a simple **Vehicle Rental Management System** using SQL.
The main objective of this project is to practice core relational database concepts such as
table design, primary and foreign keys, joins, subqueries, grouping, and filtering data
using SQL queries.

The project includes sample data and multiple SQL queries that solve real-world problems
related to vehicle rentals and bookings.

---

## 🗂️ Database Structure

The database consists of three main tables:

### 1️⃣ users
Stores information about customers and admins.

- id (Primary Key)
- name
- email
- phone
- role

---

### 2️⃣ vehicles
Stores details of vehicles available for rent.

- id (Primary Key)
- name
- type (car, bike, truck)
- model (manufacturing year)
- registration_number
- rental_price
- status (available, rented, maintenance)

---

### 3️⃣ bookings
Stores booking records and connects users with vehicles.

- booking_id (Primary Key)
- user_id (Foreign Key → users.id)
- vehicle_id (Foreign Key → vehicles.id)
- start_date
- end_date
- status
- total_cost

---

## 🔗 Relationships

- One **user** can have many **bookings** (One-to-Many)
- One **vehicle** can have many **bookings** (One-to-Many)
- `bookings.user_id` references `users.id`
- `bookings.vehicle_id` references `vehicles.id`

These relationships ensure **referential integrity** in the database.

---

## 📄 Queries

All required SQL queries are written in the `queries.sql` file.
Each query is clearly labeled using comments and directly solves the given requirements,
such as:

- Finding available vehicles
- Finding vehicles that were never booked
- Filtering vehicles by type and status
- Using `JOIN`, `WHERE`, `GROUP BY`, `HAVING`, and `NOT EXISTS`

Each query represents the **solution** to a specific problem statement.

---

## 🛠️ Technologies Used

- PostgreSQL
- SQL
- Beekeeper Studio

---

## ▶️ How to Run the Project

1. Create the database in PostgreSQL
2. Create tables using the provided schema
3. Insert sample data
4. Run queries from `queries.sql`
5. Verify the output

