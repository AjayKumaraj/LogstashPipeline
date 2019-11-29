ARG LOGSTASH_BASE_IMAGE

FROM $LOGSTASH_BASE_IMAGE

RUN rm -f /usr/share/logstash/pipeline/logstash.conf

RUN rm -f /usr/share/logstash/config/pipelines.yml

COPY pipeline/ /usr/share/logstash/pipeline/

COPY config/pipelines.yml /usr/share/logstash/config/

RUN bin/logstash-plugin install logstash-output-influxdb

RUN ls /usr/share/logstash/pipeline/
