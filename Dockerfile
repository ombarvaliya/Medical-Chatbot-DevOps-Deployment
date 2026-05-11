# FROM python:3.10-slim-buster

# WORKDIR /app

# COPY requirements.txt .

# RUN pip install --no-cache-dir -r requirements.txt

# COPY . .

# CMD ["python3", "app.py"]
FROM python:3.10-slim-buster

WORKDIR /app

COPY requirements.txt .

RUN pip install --upgrade pip

RUN pip install --no-cache-dir -r requirements.txt

RUN pip list | grep langchain

COPY . .

EXPOSE 8080

CMD ["python3", "app.py"]