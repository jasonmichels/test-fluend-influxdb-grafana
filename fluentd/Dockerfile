FROM fluent/fluentd:v0.14-onbuild
# MAINTAINER YOUR_NAME <...@...>

RUN apk add --update --virtual .build-deps \
        sudo build-base ruby-dev \

 # cutomize following instruction as you wish
 && sudo gem install \
        fluent-plugin-secure-forward \
        fluent-plugin-elasticsearch \
        fluent-plugin-kafka \
        fluent-plugin-record-reformer \
        fluent-plugin-influxdb \

 && sudo gem sources --clear-all \
 && apk del .build-deps \
 && rm -rf /var/cache/apk/* \
           /home/fluent/.gem/ruby/2.3.0/cache/*.gem

EXPOSE 24284