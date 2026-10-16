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



-- Rename Column Name
ALTER TABLE departments
RENAME COLUMN departments_id TO department_id; -- rename column

ALTER TABLE departments
RENAME COLUMN departments_name TO department_name; -- rename column



CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    phone VARCHAR(20),
    bio TEXT,
    job_title VARCHAR(50) NOT NULL,
    salary INT NOT NULL CHECK (salary > 0),
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    hire_date DATE NOT NULL,
    last_login TIMESTAMP,
    employee_status VARCHAR(20) NOT NULL DEFAULT 'active'
                    CHECK  (
                        employee_status IN ('active', 'on_leave', 'terminated')
                    ), -- active, on_leave, terminated
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    department_id INT REFERENCES departments(department_id),
    manager_id INT REFERENCES employees(employee_id)
);