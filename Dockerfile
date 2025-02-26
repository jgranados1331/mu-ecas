# Usar una imagen base de Python
FROM python:3.9-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar el archivo de dependencias
COPY backend/requirements.txt .

# Instalar las dependencias
#RUN pip install --no-cache-dir -r requirements.txt

# Copiar el resto del código del backend
COPY backend/ .

# Exponer el puerto en el que corre Django
EXPOSE 8000

# Comando para ejecutar el servidor de Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]