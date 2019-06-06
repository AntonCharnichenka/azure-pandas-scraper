FROM python:3.6.7-alpine

RUN apk update
RUN apk add gcc libc-dev python3-dev freetds-dev chromium chromium-chromedriver

RUN apk update
RUN apk add libffi-dev libressl-dev bash

RUN apk update
RUN apk add libxml2-dev xmlsec-dev g++

# Install prerequisite for pymssql, should be installed upfront
RUN pip install cython==0.29.1

RUN pip install --no-cache-dir azure==3.0.0 \
    && pip install --no-cache-dir pymongo==3.7.1 \
    && pip install --no-cache-dir pymssql==2.1.4 \
    && pip install --no-cache-dir numpy==1.14.5 \
    && pip install --no-cache-dir pandas==0.23.4 \
    && pip install --no-cache-dir lxml==4.3.0

