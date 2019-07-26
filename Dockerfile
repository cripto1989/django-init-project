FROM python:3
ENV PYTHONBUFFERED 1
RUN mkdir /code
WORKDIR /code
# COPY requirements.txt /code/
COPY requirements/base.txt /code/
COPY requirements/local.txt /code/
RUN pip install -r local.txt
COPY . /code/