import hashlib

from flask import Flask
from flask_httpauth import HTTPBasicAuth, HTTPTokenAuth

app = Flask(__name__)

basic_auth = HTTPBasicAuth()
token_auth = HTTPTokenAuth()


@basic_auth.verify_password
def verify_password(username, password):
    print(username)
    print(password)
    return True


@app.route('/auth', methods=["GET"])
@basic_auth.login_required
def token_provider():
    return hashlib.md5(bytes(basic_auth.username()))


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
