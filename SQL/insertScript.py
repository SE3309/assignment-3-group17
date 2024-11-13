import pymysql.cursors
import string
import random

connection = pymysql.connect(
    host='localhost',
    user='root',
    password='test',
    database='se3309'
)


with connection:
    with connection.cursor() as cursor:
        # Create a new record
        
        for i in range(0,100):
            sql = "INSERT INTO Conditions VALUES (%s)"
            cursor.execute(sql, ('plzwork'+str(i)))
        for i in range(0,30):
            j=random.choice(string.ascii_letters)
            sql = "INSERT INTO Technician VALUES (%s,%s,%s,%s,%s,%s,%s)"
            cursor.execute(sql, ('user'+j,'password'+j,'name'+j,'email'+j,319226+i,0,'certifications'+j))
        for i in range(0,30):
            j=random.choice(string.ascii_letters)
            sql = "INSERT INTO Owner VALUES (%s,%s,%s,%s,%s,%s)"
            cursor.execute(sql, ('user'+j,'password'+j,'name'+j,'email'+j,31226+i,0))

        # for i in range(0,30):
        #     j=random.choice(string.ascii_letters)
        #     sql = "INSERT INTO Farm VALUES (%s,%s,%s,%s,%s,%s,%s)"
        #     cursor.execute(sql, (0,23984+i,'ontario'+j,'london'+j,'sarnia road'+j,0+i,30+i))
      
    # connection is not autocommit by default. So you must commit to save
    # your changes.
    connection.commit()
