FROM ubuntu:16.04

# 패키지 다운로드 경로를 한국 미러서버로 변경
RUN cd /etc/apt && \
    sed -i 's/archive.ubuntu.com/mirror.kakao.com/g' sources.list

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
