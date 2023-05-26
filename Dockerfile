FROM python:3.8-alpine

COPY requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY main.py /app/main.py

CMD ["flask", "--app", "main", "run", "--host", "0.0.0.0"]
