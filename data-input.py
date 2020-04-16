
import mysql.connector as mysql
import random,json
import threading,time

config = {
    'user': 'trustar',
    'password': 'trustar',
    'host': '54.234.24.134',
    'database': 'trustar'
}

def random_string(abc,length):
    # abc = "123456789"
    string = str("".join(abc[random.randint(1, len(abc) - 1)] for i in range(length)))
    return string

def make_connection():
    try:
        connector = mysql.connect(**config)
    except mysql.Error as e:
        print(e)
        exit(1)
    return connector


nums = [0,1,2]
def database_insert():
    if len(nums):

        sleep_time=random.randint(600,1800)
        num  = random.randint(0,len(nums)-1)
        if num==0:
            type="URL"
        elif num==1:
            type="IP"
        elif num==2:
            type="Mobile"
        with open("data"+str(num)+".json","r") as f:
            data=json.load(f)
        if len(data):
            indi_value= data.pop()
            with open("data"+str(num)+".json","w") as f:
                json.dump(data,f)
            try:
                connector = make_connection()
                cursor = connector.cursor(buffered=True)
                cursor.execute("INSERT INTO indicators(type,value,enclave_id) VALUES(%s,%s,%s)",(type,indi_value,"012858f0-264b-11e8-b467-0ed5f89f718b"))
                connector.commit()
                cursor.close()
                print(indi_value)
            except Exception as e:
                print(e)
        else:
            nums.remove(num)
        print(sleep_time)
        time.sleep(sleep_time)
        database_insert()

database_insert()