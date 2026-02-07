import pytest
from fastapi.testclient import TestClient
import sys
import os

# Agregar el directorio padre al path para importar main
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

from main import app

client = TestClient(app)

def test_api_running():
    """Test para verificar que la API está funcionando"""
    response = client.get("/test")
    assert response.status_code == 200
    assert response.json() == {"message": "API is working"}

# caso de prueba para la predicción de supervivencia
def test_predict_survival():
    """Test para verificar la predicción de supervivencia"""
    payload = {
        "edad": 10,
        "clase": "second",
        "sexo": "M"
    }
    response = client.post("/predict", json=payload)
    assert response.status_code == 200
    assert "nivel de salades" in response.json()