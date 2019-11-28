ARG LOGSTASH_BASE_IMAGE
FROM $LOGSTASH_BASE_IMAGE

RUN rm -f /usr/share/logstash/pipeline/logstash.conf

ADD pipeline/ /usr/share/logstash/pipeline/

ADD config/ /usr/share/logstash/config/
