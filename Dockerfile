FROM gcr.io/sandbox-179708/ca_docker_java_mysql_client

RUN apk add curl

RUN export http_proxy=http://34.69.136.92:3128/ &&\
    export https_proxy=http://34.69.136.92:3128/ &&\
    export HTTP_PROXY=http://34.69.136.92:3128/ &&\
    export HTTPS_PROXY=http://34.69.136.92:3128/ &&\
    env &&\
    curl -I https://www.atmarkit.co.jp/ &&\
    curl -I https://biz.moneyforward.com/

RUN unset http_proxy http_proxy HTTPS_PROXY HTTP_PROXY &&\
    env &&\
    curl -I https://www.atmarkit.co.jp/ &&\
    curl -I https://biz.moneyforward.com/

CMD [ "/bin/ash" ]