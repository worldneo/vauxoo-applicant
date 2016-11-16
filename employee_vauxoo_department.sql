-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
id INTEGER PRIMARY KEY NOT NULL,
first_name VARCHAR(25),
last_name VARCHAR(25)
);

CREATE TABLE employee_department (
id INTEGER PRIMARY KEY NOT NULL,
name VARCHAR(25),
description varchar(25)
);

ALTER TABLE employee ADD COLUMN id_department integer NOT NULL;
ALTER TABLE employee ADD CONSTRAINT id_department FOREIGN KEY (id_department) REFERENCES employee_department (id);

INSERT INTO employee (id,first_name,last_name)
VALUES(01,'Miriam','Torres'),(02,'Armando','Cobos'),(03,'Eder','Martinez'),(04,'Elsa','Murat');

INSERT INTO employee_department (id,name,description)
VALUES(01,'finanzas','recursos'),(02,'Administrativo','archivos'),(03,'tecnico','manteniemton'),(04,'servicio social','dpt'),(05,'gerencia','gerentes'),(06,'contratacion','personal');



