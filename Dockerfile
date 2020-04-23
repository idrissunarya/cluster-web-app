FROM python:3.7-alpine
MAINTAINER Cloud App Developer Ltd

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN /bin/sh -c pip install -r /requirements.txt

RUN mkdir /django_app
WORKDIR /django_app
COPY . /django_app
