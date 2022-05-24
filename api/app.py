import datetime
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return f'{datetime.datetime.now()}\tHello World!!'