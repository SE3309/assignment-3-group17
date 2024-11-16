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
                cursor.execute(sql, (0, 1+i, billingEnd if paid else None, random.randint(6000, 10000) , billingStart, billingEnd, paid))

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
                    energyProduced = random.randint(100, 1000)
                    
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

    connection.commit()