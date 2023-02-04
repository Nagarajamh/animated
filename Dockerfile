FROM python:3.9.1-buster
FROM ubuntu:20.04

RUN apt-get update && apt-get install -y ffmpeg
CMD [ "ffmpeg" ]





WORKDIR /usr/src/app

COPY . .

RUN pip install -U -r requirements.txt

CMD [ "python", "-m", "bot" ]
