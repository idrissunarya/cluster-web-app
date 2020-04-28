FROM python:3.7-alpine
MAINTAINER Cloud App Developer Ltd

ENV PYTHONUNBUFFERED 1

WORKDIR/home/idris-book/workspace/applications/cluster/cluster-web-app

ADD requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

ADD . .

RUN django-admin startproject example99