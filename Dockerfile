FROM centos

MAINTAINER salk.onur@gmail.com

RUN rpm -Uvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-6.noarch.rpm \
      && yum update -y \
      && yum install -y python-pip \
      && pip install flask

COPY . /src

EXPOSE 5000

CMD cd /src && python hello.py
