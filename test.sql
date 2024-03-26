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

-- SELECT statement to filter table by 2 criteria
-- Select
SELECT name FROM employees 
WHERE designation ="Manager"
ORDER BY date_of_employment;    -- table shows `name` and `bill gates`

-- SELECT name in Ascending order
SELECT name FROM employees 
ORDER BY name ASC;              -- table shows `name`, `BG, EM, SJ`

SELECT * FROM employees ORDER BY xxx ASC;
SELECT * FROM employees ORDER BY xxx DESC;