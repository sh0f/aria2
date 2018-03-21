FROM alpine
RUN apk add --no-cache aria2 tzdata && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
VOLUME /data
COPY aria2.conf /root/.aria2/aria2.conf
CMD ["aria2c"]