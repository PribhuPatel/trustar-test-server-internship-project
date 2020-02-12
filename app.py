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


# connector.close()

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


@app.route('/auth', methods=["GET"])
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


@app.route('/reports', methods=["GET"])
@token_auth.login_required
def reports():
    return "Mere pass nahi hai"


@app.route('/indicators', methods=["GET"])
@token_auth.login_required
def indicators():
    from_time = int(request.args.get('from'))
    to_time = int(request.args.get('to'))
    # from_time = 1581516057
    # to_time = 1581536057
    limit=int(request.args.get('pageSize'))
    page_num=int(request.args.get('pageNumber'))
    from_time = time.strftime('%Y-%m-%d %H:%M:%S', time.gmtime(int(from_time)))
    to_time = time.strftime('%Y-%m-%d %H:%M:%S', time.gmtime(int(to_time)))

    cursor = connector.cursor(buffered=True,dictionary=True)
    cursor.execute(f"SELECT type,value FROM indicators WHERE time_stamp BETWEEN \"{from_time}\" AND \"{to_time}\" ORDER BY id DESC LIMIT {limit*page_num},{limit*page_num+limit+1}")
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
