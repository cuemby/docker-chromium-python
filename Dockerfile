FROM joyzoursky/python-chromedriver:3.8-alpine3.10-selenium
# install system dependencies
RUN apk add linux-headers
RUN apk update && apk add --no-cache --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing
RUN apk add --no-cache gcc g++ git openssh-client
RUN apk add --no-cache python3-dev openssl-dev libffi-dev gcc musl-dev && pip3 install --upgrade pip
# env vars for selenium
ENV DISPLAY=':99'
ENV CHROME_DRIVER=/usr/bin/chromedriver

WORKDIR /root
RUN mkdir .ssh
RUN chmod 700 .ssh
