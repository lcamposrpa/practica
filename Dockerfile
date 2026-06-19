# Imagen base liviana de Python
FROM python:3.12-slim

# Carpeta de trabajo dentro del contenedor
WORKDIR /app

# Instalar dependencias
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copiar el codigo y correr las pruebas
COPY . .
CMD ["pytest", "-v"]
