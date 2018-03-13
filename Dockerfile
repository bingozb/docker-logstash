# https://github.com/elastic/logstash-docker
FROM docker.elastic.co/logstash/logstash-oss:6.2.2
MAINTAINER bingo <bingov5@icloud.com>

ENV LS_JAVA_OPTS "-Xmx256m -Xms256m"

ADD https://raw.githubusercontent.com/bingozb/docker-logstash/master/logstash.yml /usr/share/logstash/config/logstash.yml
ADD https://raw.githubusercontent.com/bingozb/docker-logstash/master/logstash.conf /usr/share/logstash/pipeline/logstash.conf

RUN chmod -R 0775 /usr/share/logstash/config && \
    chmod -R 0755 /usr/share/logstash/pipeline

EXPOSE 5000
