# livestreamer-transcode
livestreamer-transcode is a Docker container to transcode streams supported by Livestreamer (https://github.com/chrippa/livestreamer).

## Usage:
```docker run -d -p PORT:8080 fmauneko/livestreamer-transcode STREAM BITRATE```

Exposes port 8080, on which the stream is published as MPEG-TS over HTTP.

## Exemple
```docker run -d -p 8080:8080 fmauneko/livestreamer-transcode https://www.twitch.tv/Cirno_TV 1200```
