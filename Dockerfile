FROM python:3.7-alpine
MAINTAINER mohamed Ahmed Ramadan

ENV PYTHONUNBUFFERED 1

COPY ./requirments.txt /requirments.txt
RUN pip3 install -r /requirments.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
