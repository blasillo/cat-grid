FROM ubuntu:20.04

# Evitar preguntas interactivas al instalar paquetes
ENV DEBIAN_FRONTEND=noninteractive


RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /app/

RUN pip3 install -r /app/requirements.txt

COPY ./app /app

WORKDIR /app

EXPOSE 5000


CMD ["python3", "/app/run.py"]