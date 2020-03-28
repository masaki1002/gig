FROM python:3.7-alpine
MAINTAINER Egota Boetai

ENV PYTHONUNBUFFRED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /apo
WORKDIR /apo
COPY ./apo /apo

RUN adduser -D user
USER user
