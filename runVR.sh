#!/bin/sh
set -e

# Garante que os diretórios existem
mkdir -p /var/www/html/hls_native
mkdir -p /var/www/html/hls_live

# Sobe o nginx em modo daemon (background)
nginx

# Dá um respiro para o nginx subir
sleep 3

# Gera HLS em loop infinito a partir de /opt/video.mp4
ffmpeg -stream_loop -1 -re -nostdin \
       -i /opt/video.mp4 \
       -c copy \
       -hls_time 4 \
       -hls_list_size 6 \
       -hls_flags split_by_time+delete_segments+independent_segments \
       -hls_segment_filename "/var/www/html/hls_native/segment%03d.ts" \
       /var/www/html/hls_native/playlist.m3u8
