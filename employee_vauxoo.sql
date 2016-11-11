-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
	id SERIAL NOT NULL PRIMARY KEY,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL
);


CREATE TABLE employee_department (
	id SERIAL NOT NULL PRIMARY KEY,
	name TEXT NOT NULL UNIQUE,
	description TEXT
);


CREATE TABLE employee_hobby (
);

-- adding the foreign key to relate employee with his/her department
ALTER TABLE employee ADD COLUMN id_employee_department INTEGER NOT NULL REFERENCES employee_department;

INSERT INTO employee_department (name, description) values ('IT', 'The best one.');
INSERT INTO employee_department (name, description) values ('Sales', '...');
INSERT INTO employee_department (name, description) values ('Legal', '...');
INSERT INTO employee_department (name, description) values ('HR', 'Human R...');
INSERT INTO employee_department (name, description) values ('Fanantial', '...');
INSERT INTO employee_department (name, description) values ('Marketing', '...');

INSERT INTO employee (first_name, last_name, id_employee_department) values ('Alan', 'Turing', 1), ('Juan', 'Perez', 1), ('Laura', 'Salum', 2), ('Alejandro', 'Thomas', 3);