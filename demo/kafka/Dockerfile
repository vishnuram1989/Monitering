FROM wurstmeister/kafka

ADD prom-jmx-agent-config.yml /usr/app/prom-jmx-agent-config.yml
ADD http://central.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.10/jmx_prometheus_javaagent-0.10.jar /usr/app/jmx_prometheus_javaagent.jar
COPY jmx_prometheus_javaagent-0.6.jar /usr/app/jmx_prometheus_javaagent-0.6.jar
COPY kafka-0-8-2.yml /usr/app/kafka-0-8-2.yml
