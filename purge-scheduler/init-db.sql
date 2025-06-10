CREATE TABLE user_transactions (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    status VARCHAR(20),
    amount NUMERIC(10,2),
    category VARCHAR(255),
    created_timestamp TIMESTAMP,
    updated_timestamp TIMESTAMP
);

INSERT INTO user_transactions (id, name, status, amount, category, created_timestamp, updated_timestamp) VALUES
(1, 'Erin', 'Active', 102.35, 'Electronics', '2023-08-14 09:05:12', '2023-10-12 04:13:21'),
(2, 'Lupe', 'Inactive', 87.65, 'Toys', '2023-04-23 20:14:48', '2023-04-25 16:39:18'),
(3, 'Carla', 'Pending', 151.22, 'Furniture', '2023-09-02 12:17:42', '2023-09-02 21:55:12');
