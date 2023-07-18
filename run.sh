#!/bin/sh

service nginx start -s -t 5

# ffmpeg -stream_loop -1 -re -nostdin -loglevel panic -i /opt/video.mp4 -c:v copy -c:a aac -ar 44100 -ac 1 -f flv rtmp://127.0.0.1/live/regina
ffmpeg -stream_loop -1 -re -nostdin -i /opt/video.mp4 -c:v copy -c:a aac -ar 44100 -ac 1 -f flv rtmp://127.0.0.1/live/regina

