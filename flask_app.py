import random
import time

from flask import Flask

app = Flask(__name__)


@app.route("/")
def hello_world():
    timer = random.randint(1, 5)
    time.sleep(timer)
    return {"Hello": "World " + str(timer)}

