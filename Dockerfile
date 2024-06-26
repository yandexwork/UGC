FROM python:3.10.13-alpine3.17 

WORKDIR /opt/app

RUN apk add curl

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY ./src ./src

ENTRYPOINT ["gunicorn", "src.main:app", "-k", "uvicorn.workers.UvicornWorker", "--bind", "0.0.0.0:80"]
