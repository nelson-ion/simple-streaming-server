#!/bin/sh

service nginx start -s -t 10

# ffmpeg -stream_loop -1 -re -nostdin -loglevel panic -i /opt/video.mp4 -c:v copy -c:a aac -ar 44100 -ac 1 -f flv rtmp://127.0.0.1/live/regina
ffmpeg -re -i /opt/video.mp4 -c:v copy -c:a aac -ar 44100 -ac 1 -f flv rtmp://127.0.0.1/live/regina

echo "started!!"