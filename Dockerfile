FROM ubuntu:jammy

RUN apt-get update && apt-get install software-properties-common -y
RUN add-apt-repository universe
RUN apt-get install nginx libnginx-mod-rtmp ffmpeg -y

COPY nginx.conf /etc/nginx/nginx.conf
COPY video.mp4 /opt/
COPY run.sh /opt/
RUN chmod +x /opt/run.sh
EXPOSE 1935

