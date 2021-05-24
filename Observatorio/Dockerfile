
FROM python:3.7

ENV PYTHONUNBUFFERED=1
RUN pip install --upgrade pip
RUN mkdir /code/
WORKDIR /code

COPY app /code/
COPY config /code/
COPY requirements.txt /code/
COPY Observatorio /code/
COPY manage.py /code/

RUN python -m pip install -r requirements.txt