FROM python:3.8.10-slim

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

ENV PORT=8000

CMD uvicorn main:app --port 8000 --host 0.0.0.0

