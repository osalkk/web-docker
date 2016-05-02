FROM amazon/aws-eb-python:3.4.2-onbuild-3.5.1

MAINTAINER salk.onur@gmail.com

COPY . /src

EXPOSE 5000

CMD /src && python hello.py
