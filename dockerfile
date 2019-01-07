FROM ubuntu:16.04


RUN apt-get update

RUN apt-get -y install vim

RUN apt-get dist-upgrade

RUN apt-get autoremove

RUN apt-get -y install python3

RUN apt-get -y install python

RUN apt-get -y install python3-pip

RUN pip3 install --upgrade pip

RUN pip3 install django 

RUN pip3 -y install djangorestframework

RUN pip install matplotlib
RUN pip install numpy
RUN pip install OpenCV-Python
