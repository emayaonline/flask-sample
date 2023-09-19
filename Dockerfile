# syntax=docker/dockerfile:1
FROM python:3.10-slim-buster
WORKDIR /app
COPY requirements.txt /app
COPY hello.py /app
RUN pip3 install --upgrade pip
RUN pip3 install setuptools==45
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
CMD [ "hello.py"]
