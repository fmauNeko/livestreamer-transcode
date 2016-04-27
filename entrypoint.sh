#!/bin/bash
if [ $1 = "help" ]; then
  echo "Please specify the URI to pass to Livestreamer, and then the targetted CBR bitrate in kbps"
  echo "Exemple: docker run --rm livestreamer-transcode https://www.twitch.tv/Cirno_TV 1200"
  exit 1
else
  livestreamer -p "cvlc --file-caching=1000 --sout=#transcode{vcodec=h264,venc=avcodec{codec=libx264},acodec=mp4a,aenc=avcodec{codec=aac,strict=-2},vb=$2,ab=192}:std{access=http,mux=ts,dst=:8080}" $1 best
  exit 0  
fi
