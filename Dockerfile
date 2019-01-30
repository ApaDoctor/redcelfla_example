FROM python:3.6-alpine

RUN mkdir /app
WORKDIR /app
COPY . /app

RUN apk update && pip install --upgrade pip && chmod +x /app/entrypoint.sh && pip install -r requirements.txt

ENTRYPOINT ["/app/entrypoint.sh"]