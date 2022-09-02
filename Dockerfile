FROM python:3.8.13-buster

RUN wget https://www.python.org/ftp/python/3.9.13/Python-3.9.13.tgz && tar -zxvf Python-3.9.13.tgz

WORKDIR Python-3.9.13

RUN ./configure && make && make install

WORKDIR /

RUN wget https://www.python.org/ftp/python/3.10.6/Python-3.10.6.tgz && tar -zxvf Python-3.10.6.tgz

WORKDIR Python-3.10.6

RUN ./configure && make && make install


WORKDIR /

RUN pip3 install tox
