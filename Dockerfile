FROM python:3.9.5-slim-buster
MAINTAINER Davos Hack Developer

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /app

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt /requirements.txt
COPY ./requirements-dev.txt /requirements-dev.txt
RUN pip install -r /requirements-dev.txt


COPY . /app/



