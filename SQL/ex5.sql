-- 1. Show the details of the farms and their payment records that pays their billing between 2024-11-01 and 2024-11-15, and order then from greatest amount to lowest.
SELECT f.farmID, f.city, p.billNumber, p.amount, p.dateReceived
FROM Farm f
JOIN Payment p ON f.farmID = p.farmID
WHERE p.dateReceived BETWEEN '2024-11-01' AND '2024-11-15'
ORDER BY p.amount DESC;

-- 2. By checking all the panels that used, find all the farms that has average energy produced greater than 222, ordered by farmID.
SELECT f.farmID, AVG(ep.energyProduced) AS avgEnergy
FROM EnergyProduced ep
JOIN Panel p ON ep.panelID = p.panelID
JOIN Farm f ON p.farmID = f.farmID
GROUP BY f.farmID
HAVING AVG(ep.energyProduced) > 222;

-- 3. List all the technicians who has done more than 30 maintenance by counting the duplicate technicianID and reference their name. Order from highest work done to lowest. 
SELECT t.username, t.technicianID, t.personName, COUNT(m.maintenanceID) AS workDone
FROM Technician t
JOIN Maintenance m ON t.technicianID = m.technicianID
GROUP BY t.technicianID
HAVING COUNT(m.maintenanceID) > 30
ORDER BY workDone DESC;

-- 4. List all the panels that the message from Logs has keyword "message1", ordered from the latest log date to earliest.
SELECT DISTINCT p.panelID, p.panelStatus, l.author, l.message, l.logDate
FROM Logs l
JOIN Panel p ON l.panelID = p.panelID
WHERE l.message LIKE '%message1%' 
ORDER BY l.logDate DESC;

-- 5. List all active panels that is in Vancouver, Calgary and London together with their provinces and installation date.
SELECT p.panelID, p.panelStatus, f.province, f.city, p.installationDate
FROM Panel p
JOIN Farm f ON p.farmID = f.farmID
WHERE f.city IN ('Vancouver', 'Calgary', 'London') AND p.panelStatus LIKE 'active'
ORDER BY p.panelID;

-- 6. Using subqueries to check any city that has sunny condition and certificates with keyword "certifications" from the maintenance history, list all the maintenance history, the person who did the maintenance, and the city name. Ordered by maintenance ID.
SELECT m1.maintenanceID, t1.personName, f.city
FROM Farm f
JOIN Maintenance m1 ON m1.panelID 
IN (
	SELECT panelID 
	FROM Panel 
	WHERE farmID = f.farmID)
JOIN Technician t1 ON m1.technicianID = t1.technicianID
WHERE EXISTS (
    SELECT *
    FROM FarmWeather fw
    JOIN WeatherConditions wc ON fw.weatherID = wc.weatherID
    WHERE fw.farmID = f.farmID AND wc.weatherDescription = 'sunny'
)
AND EXISTS (
    SELECT *
    FROM Maintenance m2
    JOIN Technician t2 ON m2.technicianID = t2.technicianID
    WHERE m2.panelID IN (SELECT panelID FROM Panel WHERE farmID = f.farmID)
    AND t2.certifications LIKE '%certifications%'
)
ORDER BY m1.maintenanceID;

-- 7. List all possible province, city, and weather condition from the weather ID.
SELECT DISTINCT w.weatherID, w.province, w.city, wc.weatherDescription
FROM Weather w
JOIN WeatherConditions wc ON w.weatherID = wc.weatherID
ORDER BY w.weatherID;
