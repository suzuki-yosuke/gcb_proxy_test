FROM gcr.io/sandbox-179708/ca_docker_java_mysql_client

ARG URL
RUN apk add curl

RUN export http_proxy=http://34.69.136.92:3128/ &&\
    export https_proxy=http://34.69.136.92:3128/ &&\
    export HTTP_PROXY=http://34.69.136.92:3128/ &&\
    export HTTPS_PROXY=http://34.69.136.92:3128/ &&\
    curl -I ${URL}

CMD [ "/bin/ash" ]