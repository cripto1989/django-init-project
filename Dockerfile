FROM python:3
ENV PYTHONBUFFERED 1
RUN mkdir /code
WORKDIR /code

COPY requirements/base.txt /code/
COPY requirements/local.txt /code/
COPY requirements/testing.txt /code/
RUN python -m pip install --upgrade pip && \
    pip install -r local.txt && \
    pip install -r testing.txt
COPY . /code/