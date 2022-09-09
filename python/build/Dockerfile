FROM python:3.7.14-alpine3.16
WORKDIR /root/opt
COPY requirements.txt requirements.txt
RUN pip install --upgrade pip && pip install --upgrade setuptools \
    && pip install -r requirements.txt