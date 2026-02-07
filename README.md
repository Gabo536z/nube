# nube
#
# * levantan la api:
# uvicorn main:app  --host 0.0.0.0 --reload
#
# * con postman/bruno o desde cmd (curl o invoke) a la ip: http://localhost:8000/predict
#
# con metodo post y este cuerpo en el json:
#
# "edad": 50,
# "clase": "Third",
# "sexo" : "male"
#
# docker run -p 8000:8000 3214944867/api-model:1.0
# docker login
# docker push 3214944867/api-model:1.0
# 