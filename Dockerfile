FROM gcr.io/sandbox-179708/ca_docker_java_mysql_client

ARG TOMCAT_VERSION=9.0.30
ARG COMMONS_DAEMON_VERSION=1.2.2

RUN apk add curl

RUN export http_proxy=http://34.69.136.92:3128/ &&\
    export https_proxy=http://34.69.136.92:3128/ &&\
    export HTTP_PROXY=http://34.69.136.92:3128/ &&\
    export HTTPS_PROXY=http://34.69.136.92:3128/

RUN curl -I https://www.atmarkit.co.jp/
RUN curl -I https://biz.moneyforward.com/

RUN unset http_proxy http_proxy HTTPS_PROXY HTTP_PROXY
RUN curl -I https://www.atmarkit.co.jp/
RUN curl -I https://biz.moneyforward.com/

CMD [ "/bin/ash" ]