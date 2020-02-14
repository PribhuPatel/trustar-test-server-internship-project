import datetime
import hashlib
import json
import time
import mysql.connector as mysql
from flask import Flask, Response,request
from flask_httpauth import HTTPBasicAuth, HTTPTokenAuth

app = Flask(__name__)
basic_auth = HTTPBasicAuth()
token_auth = HTTPTokenAuth()

api_global='/api/1.3'

config = {
    'user': 'trustar',
    'password': 'trustar',
    'host': '107.23.198.222',
    'database': 'trustar'
}

try:
    connector = mysql.connect(**config)
except mysql.Error as e:
    print(e)
    exit(1)


@app.route('/', methods=["GET"])
def home():
    return "Its our app"


@basic_auth.verify_password
def verify_password(username, password):
    cursor = connector.cursor(buffered=True)
    cursor.execute(f"SELECT count(*) FROM users WHERE username=\"{username}\" and password=\"{password}\"")
    count = cursor.fetchone()[0]
    cursor.close()
    if count:
        return True
    else:
        return False


@app.route('/oauth/token', methods=["GET"])
@basic_auth.login_required
def token_provider():
    ts = time.time()
    timestamp = datetime.datetime.fromtimestamp(ts).strftime('%Y-%m-%d %H:%M:%S')
    token = hashlib.md5((basic_auth.username() + timestamp).encode())
    token = token.hexdigest()

    cursor = connector.cursor(buffered=True,dictionary=True)
    cursor.execute(f"SELECT token,time_stamp FROM users WHERE username=\"{basic_auth.username()}\"")
    fetch_data = cursor.fetchone()
    old_time = fetch_data["time_stamp"].timestamp()
    if ts - old_time > 600:
        cursor.reset()
        cursor.execute(
            f"UPDATE users SET token=\"{token}\", time_stamp=\"{timestamp}\" WHERE username=\"{basic_auth.username()}\"")
        connector.commit()
    else:
        token = fetch_data["token"]

    cursor.close()

    response_json = {
        "access_token": token
    }
    response = Response(json.dumps(response_json))
    response.headers["Content-Type"] = "application/json"
    return response


@token_auth.verify_token
def verify_token(token):
    if token:
        cursor = connector.cursor(buffered=True,dictionary=True)
        cursor.execute(f"SELECT time_stamp FROM users WHERE token=\"{token_auth.get_auth()['token']}\"")
        fetch_data = cursor.fetchone()
        if fetch_data:
            old_time = fetch_data["time_stamp"].timestamp()
            ts = time.time()
            if ts-old_time<600:
                return True
            else:
                return False
        else:
            return False
    else:
        return False


@app.route(api_global+'/reports', methods=["GET"])
@token_auth.login_required
def reports():
    from_time = int(request.args.get('from') or 0)
    to_time = int(request.args.get('to') or 0)
    limit=int(request.args.get('pageSize') or 99)
    page_num=int(request.args.get('pageNumber') or 0)
    from_time = time.strftime('%Y-%m-%d %H:%M:%S', time.gmtime(int(from_time)))
    enclaves = request.args.get('enclaveIds') or "[]"
    mysql_json_search="JSON_CONTAINS(enclaveIds,\"[]\")"
    if enclaves!="[]":
        enclaves=enclaves.strip("[]").split(",")
        mysql_json_search = ""
        for i in enclaves:
            mysql_json_search+=f"JSON_CONTAINS(enclaveIds,\"[\"\"{i}\"\"]\") OR "
        mysql_json_search=mysql_json_search[:-4]
    if to_time:
        to_time = "\""+time.strftime('%Y-%m-%d %H:%M:%S', time.gmtime(int(to_time)))+"\""
    else:
        to_time = "NOW()"
    query=f"SELECT id,UNIX_TIMESTAMP(created) as created,UNIX_TIMESTAMP(updated) as updated,title,sector,distributionType,UNIX_TIMESTAMP(timeBegan) as timeBegan,reportBody,externalTrackingId,enclaveIds FROM reports WHERE (created BETWEEN \"{from_time}\" AND {to_time}) AND ({mysql_json_search}) ORDER BY created DESC LIMIT {limit * page_num},{limit * page_num + limit + 1}"
    cursor = connector.cursor(buffered=True,dictionary=True)
    cursor.execute(query)
    fetch_data=cursor.fetchall()
    cursor.close()

    hasNext=False
    if len(fetch_data)>limit:
        hasNext=True
        fetch_data.pop()

    for i in range(0,len(fetch_data)):
        fetch_data[i]["sector"] = json.loads(fetch_data[i]["sector"])
        fetch_data[i]["enclaveIds"] = json.loads(fetch_data[i]["enclaveIds"])

    response = {
        "hasNext": hasNext,
        "page":page_num,
        "items": fetch_data
    }
    response = Response(json.dumps(response))
    response.headers["Content-Type"]="application/json"
    return response


@app.route(api_global+'/enclaves', methods=["GET"])
@token_auth.login_required
def enclaves():
    with open("enclaves.json","r") as f:
        response = Response(f.read())
        response.headers["Content-Type"] = "application/json"
        return response


@app.route(api_global+'/indicators', methods=["GET"])
@token_auth.login_required
def indicators():
    from_time = int(request.args.get('from') or 0)
    to_time = int(request.args.get('to') or 0)
    limit=int(request.args.get('pageSize') or 99)
    page_num=int(request.args.get('pageNumber') or 0)
    from_time = time.strftime('%Y-%m-%d %H:%M:%S', time.gmtime(int(from_time)))
    if to_time:
        to_time = "\""+time.strftime('%Y-%m-%d %H:%M:%S', time.gmtime(int(to_time)))+"\""
    else:
        to_time = "NOW()"
    cursor = connector.cursor(buffered=True,dictionary=True)
    cursor.execute(f"SELECT type,value FROM indicators WHERE time_stamp BETWEEN \"{from_time}\" AND {to_time} ORDER BY id DESC LIMIT {limit*page_num},{limit*page_num+limit+1}")
    fetch_data=cursor.fetchall()
    cursor.close()

    hasNext=False
    if len(fetch_data)>limit:
        hasNext=True
        fetch_data.pop()

    response = {
        "hasNext": hasNext,
        "page":page_num,
        "items": fetch_data
    }
    response = Response(json.dumps(response).replace("type","indicatorType"))
    response.headers["Content-Type"]="application/json"
    return response

if __name__ == '__main__':
    app.run()