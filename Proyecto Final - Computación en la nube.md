**Proyecto Final - Computación en la nube**



*Usando las herramientas de computación en la nube (AWS o GCP), ingrese a su máquina virtual Linux y proceda a realizar las siguientes actividades:*



1. Actualice los paquetes del sistema operativo Linux.
   
2. Cree un usuario en el sistema y asígnele permisos de lectura y escritura sobre el proyecto.
   
3. Cree una carpeta principal que contenga la estructura de la API. Dentro de esta carpeta debe crear otra llamada test.



*Dentro de la carpeta principal, cree los archivos necesarios para la API:*



1. requirements.txt
   
2. main.py
   
3. train.py
   
4. docker-compose.yml



*En el archivo main.py:*



1. Importe y configure FastAPI.
   
2. Configure la conexión a una base de datos MySQL.
   
3. Implemente endpoints CRUD (crear, listar, actualizar y eliminar registros) utilizando MySQL.
   
4. Declare un endpoint GET de prueba.
   
5. Declare un endpoint POST que permita realizar predicciones utilizando un modelo previamente entrenado.



*En el archivo train.py, declare lo necesario para:*



Obtener los datos desde la base de datos MySQL.



1. Construir el dataset a partir de la información almacenada.
   
2. Entrenar un modelo de Machine Learning.
   
3. Guardar el modelo entrenado en un archivo con extensión .pkl que será utilizado posteriormente por la API para realizar predicciones.



*En la carpeta test, genere las pruebas de los endpoints de la API.*



*El archivo debe llamarse test\_main.py.*



Las pruebas deben validar al menos:



1. Endpoint de prueba.
   
2. Operaciones CRUD.
   
3. Endpoint de predicción.



Configure el archivo docker-compose.yml incluyendo:



1. Un servicio utilizando la imagen oficial de MySQL.
   
2. Un servicio para la aplicación utilizando una imagen construida a partir del código fuente del proyecto.
   
3. Instalación automática de dependencias.
   
4. Configuración de variables de entorno necesarias.
   
5. Persistencia de datos para MySQL mediante volúmenes.
   
6. Comando para ejecutar las pruebas automatizadas.
   
7. Comando para levantar la aplicación FastAPI.



Nota: La ejecución del proyecto debe realizarse únicamente mediante Docker Compose, utilizando tanto la imagen de MySQL (8.0) como la imagen de la aplicación.



1. Construya y levante los servicios mediante Docker Compose.
   
2. Inicie sesión en Docker Hub utilizando:

   docker login

   
3. Publique la imagen de la aplicación usando el formato:

   nombreUsuario/nombreAplicacion:version

   
4. mediante el comando:
   

&nbsp;   docker push





División trabajo



***Integrante 1 — Infraestructura, Backend y Base de Datos***

***Responsable de toda la capa API + entorno.***



***1. Máquina virtual en la nube***



***Creación de la VM en AWS o GCP.***



***Actualización del sistema Linux.***



***Creación de usuario y permisos.***



***Instalación de Docker y Docker Compose.***



***2. Base de datos MySQL***



***Configuración del servicio MySQL en docker-compose.yml.***



***Creación de:***



***Base de datos***



***Tablas necesarias***



***Datos iniciales***



***Configuración de volúmenes.***



***3. API FastAPI***



***En main.py:***



***Configuración de FastAPI.***



***Conexión a MySQL.***



***Implementación de:***



***CREATE***



***READ***



***UPDATE***



***DELETE***



***Endpoint GET de prueba.***



***Endpoint para consumir el modelo (/predict).***



***4. Integración Docker***



***Servicio de la API en docker-compose.yml.***



***Variables de entorno.***



***Networking entre API y MySQL.***



***Levantar correctamente los contenedores.***



/////////////////////////////



***Integrante 2 — Machine Learning, Testing y Despliegue***



***Responsable de la inteligencia del sistema y validación.***



***1. Entrenamiento del modelo***



***En train.py:***



***Conexión a MySQL.***



***Consulta de datos desde la base.***



***Construcción del dataset.***



***Preprocesamiento.***



***Entrenamiento del modelo.***



***Serialización del modelo en .pkl.***



***2. Integración modelo–API***



***Carga del modelo entrenado.***



***Validación de datos de entrada.***



***Lógica de predicción usada por el endpoint POST.***



***3. Pruebas***



***En test/test\_main.py:***



***Prueba endpoint GET.***



***Prueba CRUD.***



***Prueba endpoint predict.***



***Validación de respuestas HTTP.***



***4. Docker Hub***



***Construcción de imagen.***



***Versionamiento.***



***Subida a Docker hub***



***5. Despliegue en la nube***



Criterios de evaluación



Componente	%

Linux y estructura del proyecto	10%

API FastAPI funcional con CRUD	25%

Modelo entrenado desde MySQL y archivo .pkl	20%

Endpoints funcionando correctamente	15%

Configuración correcta de Docker Compose	20%

Imagen publicada en Docker Hub	10%

