FROM alpine:3.8

RUN apk add --quiet --no-cache python py-pip

ENV AWSCLI_VERSION=1.16.28
RUN pip install --quiet awscli==${AWSCLI_VERSION}

ENTRYPOINT ["aws"]
