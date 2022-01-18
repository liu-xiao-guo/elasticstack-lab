FROM docker.elastic.co/beats/filebeat:${ELASTIC_STACK_VERSION}
COPY filebeat/filebeat.yml /usr/share/filebeat/filebeat.yml
USER root
RUN chown root:filebeat /usr/share/filebeat/filebeat.yml
RUN chmod 644 /usr/share/filebeat/filebeat.yml
USER filebeat