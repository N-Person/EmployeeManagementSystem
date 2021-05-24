DROP DATABASE IF EXISTS employee_db;

CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE department
(
    id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(40) NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE role
(
    id INT AUTO_INCREMENT NOT NULL,
    title VARCHAR(40) NOT NULL,
    salary DECIMAL(10, 4) NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES department(id),
    PRIMARY KEY (id)
);


CREATE TABLE employee
(
    id INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    role_id INT NOT NULL,
    FOREIGN KEY (role_id) REFERENCES role(id),
    PRIMARY KEY (id)
);


INSERT INTO department (name)
VALUES ("Marketing"), ("Software Development"), ("Sales"), ("HR");

INSERT INTO role (title, salary, department_id)
VALUES ("Outreach manager", 90.000, 1), ("Coordinator" 70.000, 1), ("Junior Dev", 90.000, 2), ("Senior Dev", 130.000, 2), ("Distributor", 70.000, 3), ("CFO", 140.00,3), ("HR Director", 100.00, 4), ("HR Associate", 70.000, 4);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Eric", "Cartman", 1), ("Tim", "Sands", 2), ("Sarah", "Trainwreck", 3), ("Samatha", "Curls", 4), ("Brandon", "Marsh", 5), ("Lilly", "Jackson", 6), ("Salad", "Dressing", 7), ("Kyle", "Jameson", 8);


SELECT employee.id, employee.first_name, role.title, department.name
FROM employee
LEFT JOIN role ON employee.role_id = role.id
LEFT JOIN department ON role.department_id = department.id;


SELECT department.name, role.title, employee.first_name, employee.last_name
FROM department
LEFT JOIN role ON role.department_id = department.id
LEFT JOIN employee ON employee.role_id = role.id;