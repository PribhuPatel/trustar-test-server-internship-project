import hashlib
import time,datetime
import random,json

from flask import Flask, Response
from flask_httpauth import HTTPBasicAuth, HTTPTokenAuth

import mysql.connector as mysql

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

# connector.close()

@basic_auth.verify_password
def verify_password(username, password):
    cursor=connector.cursor(buffered=True)
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
    token = hashlib.md5((basic_auth.username()+timestamp).encode())
    token = token.hexdigest()

    cursor = connector.cursor(buffered=True)
    cursor.execute(f"SELECT token,time_stamp FROM users WHERE username=\"{basic_auth.username()}\"")

    fetch_data = cursor.fetchone()
    old_time = fetch_data[1].timestamp()
    print(ts-old_time)
    if ts - old_time >600:
        cursor.reset()
        cursor.execute(f"UPDATE users SET token=\"{token}\", time_stamp=\"{timestamp}\" WHERE username=\"{basic_auth.username()}\"")
        connector.commit()
    else:
        token=fetch_data[0]

    cursor.close()

    response_json = {
        "access_token":token
    }
    response = Response(json.dumps(response_json))
    response.headers["Content-Type"] = "application/json"
    return response

@token_auth.verify_token
def verify_token(token):
    print(token)
    return False


@app.route('/reports', methods=["GET"])
@token_auth.login_required
def reports():
    return "Mere pass nahi hai"


if __name__ == '__main__':
    app.run()
