from fastapi import FastAPI
from pydantic import BaseModel
import uvicorn
import pandas as pd
import numpy as np


app = FastAPI()

class Prediction(BaseModel):
    edad: int
    clase: str
    sexo: str
@app.get("/test")
def testApi():
    return {"message": "viva mexico"}