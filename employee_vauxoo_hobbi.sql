-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.


CREATE TABLE employee_hobby (
id INTEGER PRIMARY KEY NOT NULL,
employee_id INTEGER NOT NULL REFERENCES employee,
employee_hobby_id INTEGER NOT NULL REFERENCES employee_hobby,
UNIQUE (employee_id,employee_hobby_id)
PRIMARY KEY (employee_id,employee_hobby_id)
);

INSERT INTO employee_hobby (name,description)
VALUES('leer','investigar algo nuevo'),('jugar','entreteniemto'),('viajar','accion');

CREATE TABLE employee_hobbies(
employee_id INTEGER NOT NULL REFERENCES employee(id),
employee_hobby_id INTEGER NOT NULL REFERENCES employee_hobby(id)
);

INSERT INTO employee_hobbies (employee_id,employee_hobby_id)
VALUES
(1,1),
(1,2),
(1,3),
(1,4),
(2,1),
(2,2),
(2,3),
(2,4),
(3,1),
(3,2),
(3,3),
(3,4),
(4,1),
(4,2),
(4,3),
(4,4),

ALTER TABLE employee ADD COLUMN id_pass INTEGER;
ALTER TABLE employee ADD CONSTRAINT id_pass_employee FOREIGN KEY (id_pass) REFERENCES employee (id);

UPDATE employee SET id_pass = 2 WHERE id = 1;
UPDATE employee SET id_pass = 3 WHERE id = 2;
UPDATE employee SET id_pass = 2 WHERE id = 3;
UPDATE employee SET id_pass = 4 WHERE id = 4;
...
