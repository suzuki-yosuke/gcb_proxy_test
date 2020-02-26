FROM gcr.io/sandbox-179708/ca_docker_java_mysql_client

ARG URL
RUN apk add curl

RUN export http_proxy=http://35.243.107.187:3128/ &&\
    export https_proxy=http://35.243.107.187:3128/ &&\
    export HTTP_PROXY=http://35.243.107.187:3128/ &&\
    export HTTPS_PROXY=http://35.243.107.187:3128/ &&\
    curl -I ${URL}

CMD [ "/bin/ash" ]
