FROM alpine:3.16

EXPOSE 9090

RUN apk add --no-cache bash
RUN apk add --no-cache python3 && \
    if [ ! -e /usr/bin/python ]; then ln -sf python3 /usr/bin/python ; fi && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --no-cache --upgrade pip setuptools wheel && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    pip3 install web.py

COPY ./run.sh /
COPY ./hello.py /
RUN chmod +x /run.sh
ENTRYPOINT /run.sh
