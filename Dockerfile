FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install pipenv
COPY requirements.txt ./requirements.txt
RUN pip3 install -r requirements.txt
COPY . ./

RUN pipenv sync -d
CMD ["application.handler"]