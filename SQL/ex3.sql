INSERT INTO Farm
VALUES (0, 1234560002, 'Ontario', 'London', 'Richmond St', 1511, 1);

INSERT INTO Farm (phoneNumber, province, city, ownerID)
VALUES (1234560003, 'Ontario', 'Windsor', 1);

INSERT INTO Farm (phoneNumber, province, city, ownerID)
VALUES (
	(SELECT phoneNumber FROM owner WHERE ownerID = 1),
	'Ontario',
    'Chatham',
    1
    );
        
SELECT *
FROM Farm;