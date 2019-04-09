FROM python:3.5.7-stretch

RUN wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tgz && tar -zxvf Python-3.7.3.tgz

WORKDIR Python-3.7.3

RUN ./configure && make && make install

WORKDIR /

RUN wget https://www.python.org/ftp/python/3.6.8/Python-3.6.8.tgz && tar -zxvf Python-3.6.8.tgz

WORKDIR Python-3.6.8

RUN ./configure && make && make install

RUN pip install tox