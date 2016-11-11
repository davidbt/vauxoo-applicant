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

-- adding the foreign key to relate employee with his/her department
ALTER TABLE employee ADD COLUMN id_employee_department INTEGER NOT NULL REFERENCES employee_department;

-- adding boss, a boss is an employee too so no need for other table.
ALTER TABLE employee ADD COLUMN boss_id INTEGER REFERENCES employee;


CREATE TABLE employee_hobby (
	id SERIAL NOT NULL PRIMARY KEY,
	name TEXT NOT NULL UNIQUE,
	description TEXT
);

CREATE TABLE employee__employee_hobby (
	id SERIAL NOT NULL PRIMARY KEY,
	employee_id INTEGER NOT NULL REFERENCES employee,
	employee_hobby_id INTEGER NOT NULL REFERENCES employee_hobby,
	UNIQUE (employee_id, employee_hobby_id)
);

INSERT INTO employee_department (name, description) values ('IT', 'The best one.');
INSERT INTO employee_department (name, description) values ('Sales', '...');
INSERT INTO employee_department (name, description) values ('Legal', '...');
INSERT INTO employee_department (name, description) values ('HR', 'Human R...');
INSERT INTO employee_department (name, description) values ('Fanantial', '...');
INSERT INTO employee_department (name, description) values ('Marketing', '...');

INSERT INTO employee (first_name, last_name, id_employee_department) values ('Alan', 'Turing', 1), ('Juan', 'Perez', 1), ('Laura', 'Salum', 2), ('Alejandro', 'Thomas', 3);

INSERT INTO employee_hobby (name, description) VALUES ('Music', '...'), ('Movies', '...'), ('Soccer', 'A sport that ...');

INSERT INTO employee__employee_hobby (employee_id, employee_hobby_id) values (1, 1), (1, 2), (2, 2), (2, 3), (3, 1), (3, 3), (4, 2), (4, 3);
