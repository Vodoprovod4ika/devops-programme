FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install software-properties-common --yes
RUN apt-get install build-essential wget -y
RUN apt-get install python3-pip -y
RUN pip install --upgrade pip

RUN apt update

COPY ./requirements.txt /app/requirements.txt

RUN pip3 install -r /app/requirements.txt
RUN pip3 install flask

COPY app/app.py /app/app.py

WORKDIR /app

CMD [ "python3", "app.py" ]