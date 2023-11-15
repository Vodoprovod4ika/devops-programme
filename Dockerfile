FROM python:3.10-bullseye

RUN apt update

COPY ./requirements.txt /app/requirements.txt

RUN pip3 install -r /app/requirements.txt
RUN pip3 install flask

COPY app/app.py /app/app.py

WORKDIR /app

CMD [ "python3", "app.py" ]