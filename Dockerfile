FROM amazon/aws-eb-python:3.4.2-onbuild-3.5.1

MAINTAINER salk.onur@gmail.com

RUN apt-get update \
      && apt-get install -y sudo python-pip \
      && rm -rf /var/lib/apt/lists/* \
      && pip install flask

COPY . /src

EXPOSE 5000

CMD /src && python hello.py
