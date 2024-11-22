-- Panels that have been installed for more than 30 days and are active will be given an energy produced value of 0.00 with todays date
INSERT INTO EnergyProduced (currentDate, panelID, energyProduced)
SELECT CURDATE(), panelID, 0.00
FROM Panel
WHERE panelStatus = 'active'
  AND DATEDIFF(CURDATE(), installationDate) > 30
  AND panelID NOT IN (SELECT panelID FROM EnergyProduced WHERE currentDate = CURDATE());

-- Updates all panels that are inactive and have been installed for more than 35 days to active
UPDATE Panel p1
INNER JOIN (
    SELECT panelID
    FROM Panel
    WHERE panelStatus = 'inactive'
      AND DATEDIFF(CURDATE(), installationDate) > 35
) p2 ON p1.panelID = p2.panelID
SET p1.panelStatus = 'active';

-- Deletes the tuples for panels in the energy produced table whose status is active and have been installed for more than 35 days
DELETE FROM energyproduced
WHERE panelID IN (
    SELECT panelID
    FROM Panel
    WHERE panelStatus = 'active'
      AND DATEDIFF(CURDATE(), installationDate) > 35
);