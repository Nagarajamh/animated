FROM python:3.9.1-buster
FROM alpine:3.12

RUN apk add --no-cache ffmpeg

docker build -t my-ffmpeg-image
docker run -it --name my-ffmpeg-container my-ffmpeg-image sh




WORKDIR /usr/src/app

COPY . .

RUN pip install -U -r requirements.txt

CMD [ "python", "-m", "bot" ]
