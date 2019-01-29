FROM alpine
ENV PASSWORD= \
    ARGS=
RUN apk add --no-cache aria2
VOLUME /data
COPY aria2.conf /root/.aria2/aria2.conf
CMD exec aria2c \
    --rpc-secret=${PASSWORD:-$(hostname)} \
    $ARGS
