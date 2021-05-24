DROP DATABASE IF EXISTS EMPLOYEE_db;

CREATE DATABASE EMPLOYEE_db;

USE employee_db;

CREATE TABLE department

(
    id INIT AUTO_INCREMENT NOT NULL,
    name VARCHAR(40) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE role
(
    id INT AUTO_INCREMENT NOT NULL,
    title VARCHAR(40) NOT NULL,
    salary DECIMAL(10,4) NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES department(id),
    PRIMARY KEY (id)
);

INSERT INTO deparment (name)
VALUES ()