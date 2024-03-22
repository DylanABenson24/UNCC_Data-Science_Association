-- COMMENT EXAMPLE (use two dashes and space)

-- Filtering with WHERE Clause:
-- * retrieves all rows
SELECT *
FROM marina
WHERE State =('FL');

-- Aggregating Data with GROUP BY:
SELECT CategoryNum, COUNT(*)
FROM ServiceRequest
GROUP BY CategoryNum;

-- Subquery
SELECT MarinaNum, Name
FROM Marina
WHERE MarinaNum IN (SELECT MarinaNum FROM MarinaSlip WHERE Length >= 40);


-- Modifying Data - Insert: 
INSERT INTO Marina (MarinaNum, Name, Address, City, State, Zip)
VALUES ('3', 'Alex West', '123 Main St', 'West Brinman', 'FL', '32275');
--  inserts a new row into the Marina table with the specified values for each column.

-- Modifying Data - Update:
UPDATE Marina
SET Name = 'Alex North'
WHERE MarinaNum = '1';
-- updates the Name column in the Marina table, setting it to 'Alex North' where the
-- MarinaNum is '1'

-- Modifying Data - Delete:
DELETE FROM MarinaSlip
WHERE SlipID = '1';
-- deletes a row from the MarinaSlip table where the SlipID is '1'.








