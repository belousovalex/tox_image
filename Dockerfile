FROM python:3.5.9-stretch

RUN wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz && tar -zxvf Python-3.7.4.tgz

WORKDIR Python-3.7.4

RUN ./configure && make && make install

WORKDIR /

RUN wget https://www.python.org/ftp/python/3.6.9/Python-3.6.9.tgz && tar -zxvf Python-3.6.9.tgz

WORKDIR Python-3.6.9

RUN ./configure && make && make install

WORKDIR /

RUN wget https://www.python.org/ftp/python/3.8.0/Python-3.8.0.tgz && tar -zxvf Python-3.8.0.tgz

WORKDIR Python-3.8.0

RUN ./configure && make && make install

RUN pip3 install tox