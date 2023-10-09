import random
import time

from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def read_root():
    timer = random.randint(1, 5)
    time.sleep(timer)
    return {"Hello": "World " + str(timer)}
