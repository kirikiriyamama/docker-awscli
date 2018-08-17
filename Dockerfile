FROM alpine:3.8

RUN apk add --no-cache python py-pip

ENV AWSCLI_VERSION=1.15.80
RUN pip install awscli==${AWSCLI_VERSION}

ENTRYPOINT ["aws"]
