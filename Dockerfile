FROM python:3.6-slim-stretch

RUN apt update
RUN apt install -y python3-dev gcc

ADD requirements.txt requirements.txt

ADD data /data

# Install required libraries
RUN pip install -r requirements.txt

