-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
	id serial NOT NULL PRIMARY KEY,
	first_name character varying,
	last_name character varying
);

CREATE TABLE employee_department (
	id serial NOT NULL PRIMARY KEY,
	name character varying,
	description text
);

ALTER TABLE employee ADD COLUMN employee_department_id integer NOT NULL REFERENCES employee_department;

INSERT INTO employee_department (name, description) VALUES ('it', 'departament it');
INSERT INTO employee_department (name, description) VALUES ('marketing', 'departament marketing');
INSERT INTO employee_department (name, description) VALUES ('human resources', 'Search for competent staff');
INSERT INTO employee_department (name, description) VALUES ('operations', 'departament operations');
INSERT INTO employee_department (name, description) VALUES ('sales', 'departament sales');
INSERT INTO employee_department (name, description) VALUES ('financial', 'departament financial');

INSERT INTO employee (first_name, last_name, employee_department_id) VALUES ('joalbert', 'gonzalez', 1);
INSERT INTO employee (first_name, last_name, employee_department_id) VALUES ('lisset', 'orozco', 2);
INSERT INTO employee (first_name, last_name, employee_department_id) VALUES ('marina', 'gonzalez', 4);
INSERT INTO employee (first_name, last_name, employee_department_id) VALUES ('debby', 'orozco', 4);

CREATE TABLE employee_hobby (
	id serial NOT NULL PRIMARY KEY,
	name character varying,
	description text
);

CREATE TABLE employee_employee_hobby (
	id serial NOT NULL PRIMARY KEY,
	employee_id integer NOT NULL REFERENCES employee,
	employee_hobby_id integer NOT NULL REFERENCES employee_hobby,
	UNIQUE (employee_id, employee_hobby_id)
);

INSERT INTO employee_hobby (name, description) VALUES ('photography', 'photography hobby');
INSERT INTO employee_hobby (name, description) VALUES ('fishing', 'fishing hobby');
INSERT INTO employee_hobby (name, description) VALUES ('camping', 'camping hobby');

INSERT INTO employee_employee_hobby (employee_id, employee_hobby_id) VALUES (1, 2), (1, 3);
INSERT INTO employee_employee_hobby (employee_id, employee_hobby_id) VALUES (2, 1), (2, 2);
INSERT INTO employee_employee_hobby (employee_id, employee_hobby_id) VALUES (3, 2), (3, 3);
INSERT INTO employee_employee_hobby (employee_id, employee_hobby_id) VALUES (4, 1), (4, 3);

-- ...
