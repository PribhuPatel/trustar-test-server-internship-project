
import mysql.connector as mysql
import random,json,time
import threading

config = {
    'user': 'trustar',
    'password': 'trustar',
    'host': '34.200.254.120',
    'database': 'trustar'
}

def make_connection():
    try:
        connector = mysql.connect(**config)
    except mysql.Error as e:
        print(e)
        exit(1)
    return connector

nums = [0,1,2]

def database_insert():
    sleep_time=random.randint(3000,4000)
    with open("reports.json","r") as f:
        data=json.load(f)
    if len(data):
        indi_value= data.pop()
        try:
            connector = make_connection()
            enclaves =["012858f0-264b-11e8-b467-0ed5f89f718b","012858f0-264b-11e8-b467-0ed5f89f718a"]
            enclave_num = random.randint(0,1)
            cursor = connector.cursor(buffered=True)
            cursor.execute("SELECT type,value FROM indicators ORDER BY RAND() LIMIT {}".format(random.randint(1,5)))
            fetch_data_all = cursor.fetchall()
            indicators =[]
            for i in fetch_data_all:
                indicators.append({
                    "indicatorType":i[0],
                        "value":i[1]
                })
            print(indicators)
            if enclave_num:
                enclaveIds = enclaves
            else:
                enclaveIds = [enclaves[random.randint(0,1)]]
            report={
                "id": indi_value["id"],
                "title": indi_value["title"],
                "sector": {
                    "id": 8,
                    "name": "defense",
                    "label": "Defense Industrial Base"
                },
                "distributionType": "ENCLAVE",
                "reportBody": indi_value["reportBody"],
                "externalTrackingId": "Malware-192",
                "enclaveIds": enclaveIds,
                "indicators":indicators
            }

            cursor.reset()
            cursor.execute("INSERT INTO reports(id,title, sector, distributionType, reportBody,externalTrackingId, enclaveIds,indicators) VALUES(%s,%s,%s,%s,%s,%s,%s,%s)",(report["id"],report["title"],json.dumps(report["sector"]),report["distributionType"],report["reportBody"],report["externalTrackingId"],json.dumps(report["enclaveIds"]),json.dumps(report["indicators"])))
            connector.commit()
            cursor.close()
            print(indi_value)
            with open("reports.json", "w") as f:
                json.dump(data, f)
        except Exception as e:
            print(e)
        print(sleep_time)
        time.sleep(sleep_time)
        database_insert()
        # threading.Timer(sleep_time, database_insert).start() # called every minute

database_insert()