FROM arm64v8/alpine:3.11

RUN apk update
RUN apk add ffmpeg
RUN apk add --no-cache bash

CMD ["/bin/bash"]
