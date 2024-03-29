FROM python:3.10

WORKDIR /app

COPY setup.py ./setup.py

RUN python setup.py install

COPY ./uqcs ./uqcs
COPY ./util ./util

EXPOSE 9001
CMD python -m uqcs "0.0.0.0"
