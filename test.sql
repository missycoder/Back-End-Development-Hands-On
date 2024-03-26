-- UPDATE an existing row
UPDATE employees SET date_of_employment="2022-01-23"
WHERE employee_id = 1;




-- DELETE 
-- the `where` is super important because it
-- specifies which rows to DELETE
-- if there is no `where` clause, then all the rows are DELETED
DELETE FROM locations WHERE location_id = 5;