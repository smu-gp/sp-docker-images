FROM ubuntu:16.04

# 패키지 다운로드 경로를 한국 미러서버로 변경
RUN cd /etc/apt && \
    sed -i 's/archive.ubuntu.com/mirror.kakao.com/g' sources.list

RUN apt-get update && apt-get install -y \
    git \
    vim \
    python3 \ 
    python3-pip \
    net-tools \
    openssh-server
    


RUN pip3 install --upgrade pip

RUN pip3 install django 

RUN pip3 install djangorestframework

RUN pip3 install matplotlib
RUN pip3 install numpy

RUN pip install scipy
RUN pip3 install --upgrade tensorflow-gpu
RUN pip install opencv-python
RUN apt-get -y install python-opencv

