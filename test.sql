-- CREATE (INSERT) employees
INSERT INTO employees(name, designation, date_of_employment,department_id,taskforce_id)
VALUES ("Steve Jobs", "CEO", "2022-01-01", 2, 1),
("Elon Musk", "COO", "2022-01-01", 3, 2),
("Bill Gates", "Manager", "2022-01-31", 1, 3);

-- UPDATE an existing row
UPDATE employees SET date_of_employment="2022-01-23"
WHERE employee_id = 1;


-- DELETE 
-- the `where` is super important because it
-- specifies which rows to DELETE
-- if there is no `where` clause, then all the rows are DELETED
DELETE FROM employees WHERE employee_id = 3;