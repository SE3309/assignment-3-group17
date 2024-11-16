import pymysql
import random

connection = pymysql.connect(
    host='localhost',
    user='root',
    password='test',
    database='se3309'
)

with connection:
    with connection.cursor() as cursor:
        """
        Conditions
        Primary key: weatherDescription
        """
        for weatherDescription in ["sunny", "rainy", "foggy", "overcast", "snowing"]:
            sql = """
            INSERT INTO Conditions (weatherDescription)
            VALUES (%s)
            """
            cursor.execute(sql, (weatherDescription,))
        
        """
        Technician
        Primary Key: technicianID
        Alternate Key: (username, phoneNumber)
        """
        for i in range(0,30):
            s = str(i)
            sql = """
            INSERT INTO Technician (username, userPassword, personName, email, phoneNumber, technicianID, certifications)
            VALUES (%s,%s,%s,%s,%s,%s,%s)
            """
            cursor.execute(sql, ('user'+s,'password'+s,'name'+s,'email'+s,319226+i,0,'certifications'+s))

        """
        Owner
        Primary Key: ownerID
        Alternate Key: (username, phoneNumber)
        """
        for i in range(0,10):
            s = str(i)
            sql = """
            INSERT INTO Owner (username, userPassword, personName, email, phoneNumber, ownerID)
            VALUES (%s,%s,%s,%s,%s,%s)
            """
            cursor.execute(sql, ('user'+s,'password'+s,'name'+s,'email'+s,319226+i,0))

        """
        Farm
        Primary Key: farmID
        Alternate Key: phoneNumber
        Foreign Key: ownerID
        """
        for i in range(0,10):
            s = str(i)
            sql = """
            INSERT INTO Farm (farmID, phoneNumber, province, city, street, streetNumber, ownerID)
            VALUES (%s,%s,%s,%s,%s,%s,%s)
            """
            cursor.execute(sql, (0,319226+i, 'province'+s, 'city'+s, 'street'+s, 100+i, 1+i))

        """
        Payment
        Primary Key: billNumber
        Foreign Key: farmID
        """
        for i in range(0,10):
            for j in range(0,2):
                billingStart = '2024-11-1'
                billingEnd = '2024-11-15'
                paid = True
                if j == 1: 
                    billingStart = '2024-11-16'
                    billingEnd = '2024-11-30'
                    paid = False
                
                sql = """
                INSERT INTO Payment (billNumber, farmID, dateReceived, amount, billingPeriodStartDate, billingPeriodEndDate, paymentStatus)
                VALUES (%s,%s,%s,%s,%s,%s,%s)
                """
                cursor.execute(sql, (0, 1+i, billingEnd if paid else None, random.randint(600, 1000) , billingStart, billingEnd, paid))

        """
        Panel
        Primary Key: panelID
        Foreign Key: farmID
        """
        for i in range(0,10):
            for j in range(0,100):
                status = "active" if j%30 != 0 else "inactive"
                installationDate = '2024-10-' + str(random.randint(10,20))
                sql = """
                INSERT INTO Panel (panelID, farmID, panelStatus, installationDate)
                VALUES (%s,%s,%s,%s)
                """
                cursor.execute(sql, (0, 1+i, status, installationDate))

        """
        Logs
        Primary Key: logID
        Foreign Key: panelID
        """
        for i in range(0,10):
            for j in range(0,100):
                panelID = (i*100) + (j+1)
                for k in range(0,30):
                    s = str(i) + str(j) + str(k)
                    logDate = '2024-11-' + str(1 + k)

                    sql = """
                    INSERT INTO Logs (logID, panelID, author, message, logDate)
                    VALUES (%s,%s,%s,%s,%s)
                    """
                    cursor.execute(sql, (0, panelID, "author"+s, "message"+s, logDate))
        
        """
        Maintenance
        Primary Key: maintenanceID
        Foreign Key: panelID, technicianID
        """
        for i in range(0,10):
            for j in range(0,100):
                s = str(i) + str(j)
                scheduleDate = '2024-11-' + str(random.randint(1,30))
                technicianID = random.randint(1,30)
                panelID = (i*100) + (j+1)

                sql = """
                INSERT INTO Maintenance (maintenanceID, panelID, scheduleDate, maintenanceType, maintenanceStatus, technicianID)
                VALUES (%s,%s,%s,%s,%s,%s)
                """
                cursor.execute(sql, (0, panelID, scheduleDate, 'type'+s, 'status'+s, technicianID))

        """
        EnergyProduced
        Primary Key: currentDate, panelID
        Foreign Key: panelID
        """
        for i in range(0,10):
            for j in range(0,100):
                panelID = (i*100) + (j+1)
                for k in range(0,30):
                    currentDate = '2024-11-' + str(1 + k)
                    energyProduced = random.randint(150, 300)
                    
                    sql = """
                    INSERT INTO EnergyProduced (currentDate, panelID, energyProduced)
                    VALUES (%s,%s,%s)
                    """
                    cursor.execute(sql, (currentDate, panelID, energyProduced))

        """
        Weather
        Primary Key: weatherID
        Alternate Key: (currentDate, province, city)
        """
        for i in range(0,10):
            s = str(i)
            for j in range(0,30):
                currentDate = '2024-11-' + str(1 + j)
                averageTemperature = random.randint(-5, 5)
                sunrise = '07:' + format(j, "02d") + ':00'
                sunset = '17:' + format(30-j, "02d") + ':00'

                sql = """
                INSERT INTO Weather (weatherID, currentDate, province, city, averageTemperature, sunrise, sunset)
                VALUES (%s,%s,%s,%s,%s,%s,%s)
                """
                cursor.execute(sql, (0, currentDate, "province"+s, "city"+s, averageTemperature, sunrise, sunset))

        """
        FarmWeather
        Primary Key: (farmID, weatherID)
        Foreign Key: farmID, weatherID
        """
        for i in range(0,10):
            for j in range(0,30):
                farmID = i+1
                weatherID = (i*30) + (j+1)
                sql = """
                INSERT INTO FarmWeather (farmID, weatherID)
                VALUES (%s,%s)
                """
                cursor.execute(sql, (farmID, weatherID))

        """
        WeatherConditions
        Primary Key: (weatherID, weatherDescription)
        Foreign Key: weatherID, weatherDescription
        """
        for i in range(0,10):
            for j in range(0,30):
                weatherID = (i*30) + (j+1)
                weatherDescription = random.choice(["sunny", "rainy", "foggy", "overcast", "snowing"])
                sql = """
                INSERT INTO WeatherConditions (weatherID, weatherDescription)
                VALUES (%s,%s)
                """
                cursor.execute(sql, (weatherID, weatherDescription))


        """
        Meaninguful Data
        """
        # Conditions: Already completed

        # Technician:
        NUMTECHS = 30
        rows = [
            ('tech1', 'password123', 'John Doe', 'johndoe@example.com', 3173512584, 0, 'A+, Network+'),
            ('tech2', 'secure_pass', 'Jane Smith', 'janesmith@example.com', 4105686692, 0, 'CCNA, CCNP'),
            ('tech3', 'tech3pass', 'Michael Johnson', 'michaelj@example.com', 5082959118, 0, 'Security+'),
            ('tech4', 'pass4tech', 'Emily Davis', 'emilyd@example.com', 6134402951, 0, 'MCSA, MCSE'),
            ('tech5', 'strong_pass', 'David Lee', 'davidlee@example.com', 4573827517, 0, 'Linux+')
        ]
        for row in rows:
            sql = """
            INSERT INTO Technician (username, userPassword, personName, email, phoneNumber, technicianID, certifications)
            VALUES (%s,%s,%s,%s,%s,%s,%s)
            """
            cursor.execute(sql, (row[0], row[1], row[2], row[3], row[4], row[5], row[6]))

        # Owner:
        NUMOWNERS = 10
        rows = [
            ('owner1', 'password123', 'Alice Johnson', 'alicej@example.com', 9237967201, 0),
            ('owner2', 'secure_pass', 'Bob Smith', 'bobsmith@example.com', 1588132397, 0),
            ('owner3', 'owner3pass', 'Charlie Brown', 'charliebrown@example.com', 9110164139, 0),
            ('owner4', 'pass4owner', 'James Mann', 'jamesmann@example.com', 5846949322, 0),
            ('owner5', 'strong_pass', 'Richard King', 'richardking@example.com', 9888968081, 0)
        ]
        for row in rows:
            sql = """
            INSERT INTO Owner (username, userPassword, personName, email, phoneNumber, ownerID)
            VALUES (%s,%s,%s,%s,%s,%s)
            """
            cursor.execute(sql, (row[0], row[1], row[2], row[3], row[4], row[5]))

        # Farm:
        NUMFARMS = 10
        rowsF = [
            (0, 6838040453, 'Ontario', 'London', 'Main St', 123, 1 + NUMOWNERS),
            (0, 6269647408, 'Quebec', 'Montreal', 'St. Catherine St', 456, 2 + NUMOWNERS),
            (0, 7471460805, 'British Columbia', 'Vancouver', 'Granville St', 789, 3 + NUMOWNERS),
            (0, 9300340402, 'Alberta', 'Calgary', '17th Ave', 101, 4 + NUMOWNERS),
            (0, 7672486121, 'Nova Scotia', 'Halifax', 'Spring Garden Rd', 222, 5 + NUMOWNERS)
        ]
        for row in rowsF:
            sql = """
            INSERT INTO Farm (farmID, phoneNumber, province, city, street, streetNumber, ownerID)
            VALUES (%s,%s,%s,%s,%s,%s,%s)
            """
            cursor.execute(sql, (row[0], row[1], row[2], row[3], row[4], row[5], row[6]))

        # Payment:
        rows = [
            (0, 1 + NUMFARMS, '2024-11-15', 900, '2024-11-1', '2024-11-15', True),
            (0, 1 + NUMFARMS, '2024-11-30', 960, '2024-11-16', '2024-11-30', True),
            (0, 2 + NUMFARMS, '2024-11-15', 670, '2024-11-1', '2024-11-15', True),
            (0, 2 + NUMFARMS, '2024-11-30', 640, '2024-11-16', '2024-11-30', True),
            (0, 3 + NUMFARMS, '2024-11-15', 720, '2024-11-1', '2024-11-15', True),
            (0, 3 + NUMFARMS, '2024-11-30', 890, '2024-11-16', '2024-11-30', True),
            (0, 4 + NUMFARMS, '2024-11-15', 650, '2024-11-1', '2024-11-15', True),
            (0, 4 + NUMFARMS, '2024-11-30', 790, '2024-11-16', '2024-11-30', True),
            (0, 5 + NUMFARMS, '2024-11-15', 980, '2024-11-1', '2024-11-15', True),
            (0, 5 + NUMFARMS, '2024-11-30', 820, '2024-11-16', '2024-11-30', True)
        ]
        for row in rows:
            sql = """
            INSERT INTO Payment (billNumber, farmID, dateReceived, amount, billingPeriodStartDate, billingPeriodEndDate, paymentStatus)
            VALUES (%s,%s,%s,%s,%s,%s,%s)
            """
            cursor.execute(sql, (row[0], row[1], row[2], row[3], row[4], row[5], row[6]))

        # Panel:
        NUMPANELS = 1000
        inactivePanels = {}
        for i in range(0,5):
            for j in range(0,100):
                panelID = (i*100) + (j+1) + NUMPANELS
                active = random.randint(0,100) < 95
                
                if not active:
                    inactivePanels[panelID] = random.randint(0,7)

                status = "active" if active else "inactive"
                installationDate = '2024-10-' + str(random.randint(14,17))
                sql = """
                INSERT INTO Panel (panelID, farmID, panelStatus, installationDate)
                VALUES (%s,%s,%s,%s)
                """
                cursor.execute(sql, (0, i+1+NUMFARMS, status, installationDate))

        # Logs:
        for i in range(0,5):
            for j in range(0,100):
                panelID = (i*100) + (j+1) + NUMPANELS
                for k in range(0,30):
                    logDate = '2024-11-' + str(1 + k)

                    message = str(k+1) + " days running"
                    if panelID in inactivePanels and k+1 >= 30 - inactivePanels[panelID]:
                        message = "panel inactive"
                    
                    sql = """
                    INSERT INTO Logs (logID, panelID, author, message, logDate)
                    VALUES (%s,%s,%s,%s,%s)
                    """
                    cursor.execute(sql, (0, panelID, "system", message, logDate))
        
        # Maintenance: 
        for i in range(0,5):
            scheduleDate = '2024-12-' + str(random.randint(5,15))
            for j in range(0,100):
                panelID = (i*100) + (j+1) + NUMPANELS
                
                sql = """
                    INSERT INTO Maintenance (maintenanceID, panelID, scheduleDate, maintenanceType, maintenanceStatus, technicianID)
                    VALUES (%s,%s,%s,%s,%s,%s)
                    """
                cursor.execute(sql, (0, i+1, scheduleDate, 'cleaning', 'scheduled', i+1+NUMTECHS))

        # EnergyProduced:
        energyProducedList = []
        for i in range(0,5):
            dateFarmEnergy = {}
            for j in range(0,100):
                panelID = (i*100) + (j+1) + NUMPANELS
                for k in range(0,30):
                    currentDate = '2024-11-' + str(1 + k)
                    energyProduced = 0

                    if panelID in inactivePanels and k+1 >= 30 - inactivePanels[panelID]:
                        energyProduced = 0
                    elif k not in dateFarmEnergy:
                        energyProduced = random.randint(150, 300)
                        dateFarmEnergy[k] = energyProduced
                    else:
                        # energyProduced = dateFarmEnergy[k] + random.randint(-25, 25)
                        energyProduced = dateFarmEnergy[k]

                    energyProducedList.append(energyProduced)

                    sql = """
                    INSERT INTO EnergyProduced (currentDate, panelID, energyProduced)
                    VALUES (%s,%s,%s)
                    """
                    cursor.execute(sql, (currentDate, panelID, energyProduced))
        
        # Weather:
        NUMWEATHER = 300
        for i in range(0,5):
            for j in range(0,30):
                currentDate = '2024-11-' + str(1 + j)
                averageTemperature = random.randint(-5, 5)
                sunrise = '07:' + format(j, "02d") + ':00'
                sunset = '17:' + format(30-j, "02d") + ':00'

                sql = """
                INSERT INTO Weather (weatherID, currentDate, province, city, averageTemperature, sunrise, sunset)
                VALUES (%s,%s,%s,%s,%s,%s,%s)
                """
                cursor.execute(sql, (0, currentDate, rowsF[i][2], rowsF[i][3], averageTemperature, sunrise, sunset))

        # FarmWeather:
        for i in range(0,5):
            for j in range(0,30):
                farmID = i+1 + NUMFARMS
                weatherID = (i*30) + (j+1) + NUMWEATHER
                sql = """
                INSERT INTO FarmWeather (farmID, weatherID)
                VALUES (%s,%s)
                """
                cursor.execute(sql, (farmID, weatherID))
        
        # WeatherConditions:
        for i in range(0,5):
            for j in range(0,30):
                weatherID = (i*30) + (j+1) + NUMWEATHER
                condition = {
                    (125,191): "rainy",
                    (192,258): "overcast",
                    (259,325): "sunny",
                }

                weatherDescription = ""
                for range1, value in condition.items():
                    start, end = range1
                    if start <= energyProducedList[(i*100) + j] <= end:
                        weatherDescription = value
                        break

                sql = """
                INSERT INTO WeatherConditions (weatherID, weatherDescription)
                VALUES (%s,%s)
                """
                cursor.execute(sql, (weatherID, weatherDescription))

    connection.commit()