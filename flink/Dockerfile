FROM flink:1.6.1
ENV FLINK_CONF_DIR $FLINK_HOME/conf
ENV log.file $FLINK_HOME/log
COPY flink-metrics-prometheus-1.6.0.jar /opt/flink/lib/flink-metrics-prometheus-1.6.0.jar
COPY conf/* /opt/flink/conf/
RUN chown -R flink:flink /opt/flink/lib/ && chown -R flink:flink /opt/flink/conf/

