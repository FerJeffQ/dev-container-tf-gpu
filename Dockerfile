# Usar la imagen de TensorFlow con soporte para GPU
FROM tensorflow/tensorflow:2.11.0-gpu

# Actualizar los paquetes del sistema
RUN apt-get update && apt-get install -y libgl1-mesa-glx

# Instalar cualquier paquete adicional que necesites
COPY . .

RUN pip install -r requirements.txt

# Copiar los archivos de tu proyecto al contenedor
COPY . /home

# Establecer el directorio de trabajo
WORKDIR /home

EXPOSE 8888

# Instalar las dependencias de tu proyecto
#RUN pip install -r requirements.txt

# Comando para ejecutar al iniciar el contenedor
#CMD ["python", "tu-script.py"]


