CREATE DATABASE employees;

USE employees;

CREATE TABLE departments (
    department_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(45) NOT NULL

) ENGINE = innodb;


CREATE TABLE employees (
employee_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
-- if no value given for designation, default to "N/A"
designation VARCHAR(100) NOT NULL DEFAULT "N/A",
date_of_employment DATE NOT NULL,
-- foreign key
department_id INT UNSIGNED NOT NULL
) ENGINE = innodb;

-- CREATE foreign key such that employees.department_id
-- refers to departments.department_id
ALTER TABLE employees ADD CONSTRAINT fk_employees_departments
FOREIGN KEY (department_id) REFERENCES departments (department_id);

-- INSERT rows into department
INSERT INTO departments (name) VALUE ('Accounting');

INSERT INTO departments(name) VALUE ('Marketing'),('Operations');

