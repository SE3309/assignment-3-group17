CREATE VIEW FarmView AS
SELECT 
    province, 
    city, 
    street, 
    streetNumber, 
    phoneNumber, 
    ownerID
FROM 
    Farm;

CREATE VIEW TechnicianMaintenanceLog AS
SELECT 
    m.maintenanceID,
    m.panelID,
    m.scheduleDate,
    m.maintenanceType,
    m.maintenanceStatus,
    t.technicianID,
    t.personName,
    t.email,
    t.phoneNumber,
    t.certifications
FROM 
    Maintenance m
JOIN 
    Technician t 
ON 
    m.technicianID = t.technicianID;





