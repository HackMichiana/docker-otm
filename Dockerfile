FROM ubuntu:14.04
RUN apt-get -y update
RUN apt-get -y install python-setuptools python-software-properties git
RUN apt-get -y install nodejs redis-server
RUN apt-get -y install gettext libproj-dev libgdal1-dev build-essential python-pip python-dev
RUN apt-get -y install sendmail
RUN apt-get -y install libfreetype6-dev
# RUN apt-get -y install xvfb firefox
RUN apt-get -y install postgresql postgresql-server-dev-9.3 postgresql-contrib postgresql-9.3-postgis-2.1
COPY setup_postgres.sh .
RUN ./setup_postgres.sh
COPY setup_otm-core.sh .
RUN ./setup_otm-core.sh
