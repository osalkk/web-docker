FROM centos

MAINTAINER salk.onur@gmail.com

COPY . /src

EXPOSE 5000

CMD /src && python hello.py
