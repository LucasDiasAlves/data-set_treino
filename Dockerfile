FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*