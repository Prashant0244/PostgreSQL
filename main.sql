CREATE TABLE departments (
    departments_id SERIAL PRIMARY KEY, -- value should be primary and not null
    departments_name VARCHAR(50) NOT NULL
);

INSERT INTO departments (departments_name)
VALUES
('Sales'),
('Support'),
('Warehouse');

INSERT INTO departments (departments_id, departments_name)
VALUES
(4, 'Tech');

SELECT * FROM departments;