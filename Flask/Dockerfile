FROM debian:11

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y build-essential pkg-config python-dev python3 python3-pip default-libmysqlclient-dev
RUN pip install --upgrade pip
RUN pip install flask-mysqldb mysql-connector-python
RUN mkdir /srv/templates

COPY app.py /srv/
COPY index.html /srv/templates/

CMD ["flask","--app","/srv/app.py","run","--host=0.0.0.0"]
