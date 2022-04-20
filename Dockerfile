FROM python:3.8.10

ENV PYTHONUNBUFFERED 1

RUN apt-get -y update
RUN apt-get -y install vim

RUN mkdir /srv/docker-server
ADD . /srv/docker-server

WORKDIR /srv/docker-server

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

RUN gunicorn docker_django.wsgi:application -b 0:80

# EXPOSE 8000
# CMD [ "python", "./docker_django/manage.py", "runserver", "0.0.0.0:8000"  ]
