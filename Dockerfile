# FROM bigtruedata/scala
FROM boxyware/scala

ENV SPARK_VERSION=2.4.0 \
    SPARK_HOME=/opt/spark

ADD http://apache.uvigo.es/spark/spark-2.4.0/spark-2.4.0-bin-hadoop2.7.tgz /tmp

# installing Spark
RUN tar xf /tmp/spark-${SPARK_VERSION}-bin-hadoop2.7.tgz -C /tmp \
    && mv /tmp/spark-${SPARK_VERSION}-bin-hadoop2.7 /opt/spark \
# cleanup
    && rm -rf /tmp/*

ENTRYPOINT [ "/opt/spark/bin/spark-shell" ]