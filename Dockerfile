FROM alpine:3.13

ADD /bootstrap.sh /bootstrap.sh
ADD /lambda_entrypoint.sh /lambda_entrypoint.sh
ADD https://github.com/aws/aws-lambda-runtime-interface-emulator/releases/latest/download/aws-lambda-rie /usr/local/bin/aws-lambda-rie

RUN apk add --no-cache curl \
    && chmod +x /usr/local/bin/aws-lambda-rie

WORKDIR /var/task

ENTRYPOINT ["/lambda_entrypoint.sh"]
