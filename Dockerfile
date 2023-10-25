FROM ubuntu:22.04

RUN apt-get update -y \
    && apt-get install python3 python3-pip -y

RUN useradd -ms /bin/bash python_web
USER python_web

COPY requirements.txt /app/requirements.txt
COPY /app /app
WORKDIR /app
RUN pip install -r requirements.txt 

EXPOSE 5000

CMD ["python3", "app.py"]