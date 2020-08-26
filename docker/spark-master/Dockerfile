FROM spark-base

ENV SPARK_MASTER_PORT 7077
ENV SPARK_MASTER_WEBUI_PORT 8080

EXPOSE 8080 7077

CMD cd ${SPARK_HOME} && \
    bin/spark-class org.apache.spark.deploy.master.Master --port ${SPARK_MASTER_PORT} --webui-port ${SPARK_MASTER_WEBUI_PORT}