-- some of the parts of primary key are not set to NOT NULL but are 
-- foreign keys and in original table are NOT NULL

DROP TABLE WeatherConditions, Weather, Technician, Payment, Panel, Owner, Maintenance, Logs, FarmWeather, Farm, EnergyProduced, Conditions;

CREATE TABLE Conditions(
	weatherDescription VARCHAR(100) NOT NULL, -- description is keyword
    PRIMARY KEY(weatherDescription)
);
CREATE TABLE Technician(
	username VARCHAR(100),
    userPassword VARCHAR(100), -- password is keyword
    personName VARCHAR(100), -- name is keyword 
    email VARCHAR(100),
    phoneNumber BIGINT NOT NULL,
    technicianID INT NOT NULL AUTO_INCREMENT,
    certifications VARCHAR(100),
    PRIMARY KEY (technicianID),
    UNIQUE(phoneNumber),
    UNIQUE(username)
);
CREATE TABLE Owner(
	username VARCHAR(100),
    userPassword VARCHAR(100), -- password is keyword
    personName VARCHAR(100), -- name is keyword 
    email VARCHAR(100),
	phoneNumber BIGINT NOT NULL,
    ownerID INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(ownerID),
    UNIQUE(phoneNumber),
    UNIQUE(username)
);
CREATE TABLE Farm(
	farmID INT NOT NULL AUTO_INCREMENT,
    phoneNumber BIGINT NOT NULL,
    province VARCHAR(100),
    city VARCHAR(100),
    street VARCHAR(100),
    streetNumber INT,
    ownerID INT NOT NULL,
    PRIMARY KEY(farmID),
    UNIQUE(phoneNumber),
    FOREIGN KEY(ownerID) REFERENCES Owner(ownerID)
);
CREATE TABLE Payment(
	billNumber INT NOT NULL AUTO_INCREMENT,
    farmID INT NOT NULL,
    dateReceived DATE,
    amount INT,
    billingPeriodStartDate Date,
	billingPeriodEndDate Date,
    paymentStatus VARCHAR(100),
    PRIMARY KEY(billNumber),
    FOREIGN KEY(farmID) REFERENCES Farm(farmID)
);
CREATE TABLE Panel(
	panelID INT NOT NULL AUTO_INCREMENT,
    farmID INT NOT NULL,
    panelStatus VARCHAR(100), -- status is a keyword
    installationDate DATE,
    PRIMARY KEY(panelID),
    FOREIGN KEY(farmID) REFERENCES Farm(farmID)
);
CREATE TABLE Logs( -- log is a keyword 
	logID INT NOT NULL AUTO_INCREMENT,
    panelID INT NOT NULL,
    author VARCHAR(100),
    message VARCHAR(100),
    logDate DATE,
    PRIMARY KEY(logID),
    FOREIGN KEY(panelID) REFERENCES Panel(panelID)
);
CREATE TABLE Maintenance(
	maintenanceID INT NOT NULL AUTO_INCREMENT,
    panelID INT NOT NULL,
    scheduleDate DATE,
    maintenanceType VARCHAR(100),
    maintenanceStatus VARCHAR(100), -- status is a keyword
    technicianID INT NOT NULL,
    PRIMARY KEY(maintenanceID),
    FOREIGN KEY(panelID) REFERENCES Panel(panelID),
    FOREIGN KEY(technicianID) REFERENCES Technician(technicianID)
);
CREATE TABLE EnergyProduced(
	currentDate DATE NOT NULL, -- date is a keyword
    panelID INT NOT NULL,
    energyProduced DECIMAL, -- can change to varchar if we decide units are needed in value
    PRIMARY KEY(currentDate, panelID),
    FOREIGN KEY(panelID) REFERENCES Panel(panelID)
);

CREATE TABLE Weather(
	weatherID INT NOT NULL AUTO_INCREMENT,
    currentDate DATE NOT NULL, -- date is keyword
    province VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    averageTemperature INT,
    sunrise TIME,
    sunset TIME,
    PRIMARY KEY(weatherID),
    UNIQUE (currentDate, province, city)
);
CREATE TABLE FarmWeather(
	farmID INT NOT NULL,
    weatherID INT NOT NULL,
    PRIMARY KEY (farmID,weatherID),
    FOREIGN KEY (farmID) REFERENCES Farm(farmID),
    FOREIGN KEY (weatherID) REFERENCES Weather(weatherID)    
);
CREATE TABLE WeatherConditions(
	weatherID INT NOT NULL,
    weatherDescription VARCHAR(100)NOT NULL, -- description is keyword
    PRIMARY KEY (weatherID, weatherDescription),
	FOREIGN KEY (weatherID) REFERENCES Weather(weatherID),
	FOREIGN KEY (weatherDescription) REFERENCES Conditions(weatherDescription)
);
