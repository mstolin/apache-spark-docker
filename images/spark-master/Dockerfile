FROM spark-base

ENV SPARK_MASTER_PORT 7077
ENV SPARK_MASTER_WEBUI_PORT 4040

EXPOSE 4040 7077

CMD cd ${SPARK_HOME} && \
    bin/spark-class org.apache.spark.deploy.master.Master --port ${SPARK_MASTER_PORT} --webui-port ${SPARK_MASTER_WEBUI_PORT}