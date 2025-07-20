-- Create the table schema
CREATE TABLE user_transaction (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    status VARCHAR(20),
    amount NUMERIC(10,2),
    category VARCHAR(255),
    created_timestamp TIMESTAMP,
    updated_timestamp TIMESTAMP
);

-- Insert 21 rows of sample data into the new table
INSERT INTO user_transaction (id, name, status, amount, category, created_timestamp, updated_timestamp) VALUES
(121, 'Test', 'Inactive', 213.78, 'Electronics', '2025-07-15 12:11:12', '2025-07-15 12:17:31'),
(13, 'Michael', 'Inactive', 213.78, 'Electronics', '2025-06-10 12:11:12', '2023-09-26 20:17:31'),
(2, 'Lupe', 'Inactive', 87.65, 'Toys', '2025-04-23 20:14:48', '2023-04-25 16:39:18'),
(19, 'Chris', 'Active', 172.45, 'Electronics', '2025-07-23 18:41:02', '2023-08-01 03:36:22'),
(5, 'Benny', 'Active', 45.00, 'Electronics', '2024-11-15 16:23:44', '2023-11-15 17:10:01'),
(11, 'Kylie', 'Pending', 120.33, 'Toys', '2025-03-03 18:45:44', '2023-04-01 13:32:09'),
(12, 'Laura', 'Active', 98.20, 'Clothing', '2025-06-16 13:16:33', '2023-07-15 10:40:11'),
(7, 'Georgina', 'Pending', 86.47, 'Toys', '2025-06-29 05:14:39', '2023-07-02 11:55:22'),
(14, 'Nina', 'Active', 76.60, 'Books', '2025-07-04 07:07:29', '2023-09-18 11:22:55'),
(8, 'Mariah', 'Active', 307.90, 'Clothing', '2024-09-17 23:07:58', '2023-11-01 16:33:45'),
(17, 'Vicky', 'Inactive', 65.89, 'Clothing', '2025-05-29 21:15:33', '2023-07-03 11:55:34'),
(1, 'Erin', 'Active', 102.35, 'Electronics', '2024-08-14 09:05:12', '2023-10-12 04:13:21'),
(6, 'Frankie', 'Inactive', 222.10, 'Books', '2025-02-11 13:49:11', '2023-10-28 08:28:09'),
(18, 'Judith', 'Active', 89.12, 'Books', '2024-11-10 08:03:19', '2023-11-22 15:12:01'),
(4, 'Penelope', 'Active', 199.99, 'Clothing', '2025-05-07 11:25:07', '2023-07-01 15:08:18'),
(20, 'Tina', 'Pending', 248.00, 'Furniture', '2025-02-18 14:44:51', '2023-07-05 20:11:55'),
(9, 'Isaac', 'Active', 155.54, 'Furniture', '2024-11-11 10:22:25', '2023-11-12 19:48:56'),
(3, 'Carla', 'Pending', 151.22, 'Furniture', '2024-09-02 12:17:42', '2023-09-02 21:55:12'),
(15, 'Oscar', 'Pending', 399.99, 'Furniture', '2024-09-22 15:55:49', '2023-10-09 22:14:48'),
(16, 'Tony', 'Active', 156.75, 'Toys', '2024-10-10 16:31:24', '2023-10-10 16:31:24'),
(10, 'Whalen', 'Inactive', 41.90, 'Books', '2024-08-21 06:37:11', '2023-08-21 08:02:15');
