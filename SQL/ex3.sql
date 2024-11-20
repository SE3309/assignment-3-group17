-- Owner needed first as Farm has a foreign key to Owner
INSERT INTO Owner
VALUES ('annesmith', 'password1', 'Anne Smith', 'annesmith@example.com', '2512512511', 0);

-- Farm Insert 1: No columns specified
INSERT INTO Farm
VALUES (0, 1234560002, 'Ontario', 'London', 'Richmond St', 1511, 1);

-- Farm Insert 2: Columns specified, and some values left null
INSERT INTO Farm (phoneNumber, province, city, ownerID)
VALUES (1234560003, 'Ontario', 'Windsor', 1);

-- Farm Insert 3: Columns specified and phoneNumber selected from Owner table
INSERT INTO Farm (phoneNumber, province, city, ownerID)
VALUES (
	(SELECT phoneNumber FROM owner WHERE ownerID = 1),
	'Ontario',
    'Chatham',
    1
    );
    
-- Show the results of all three inserts
SELECT *
FROM Farm;