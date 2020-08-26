FROM spark-base

ENV SPARK_WORKER_WEBUI_PORT 8081
ENV SPARK_MASTER_URI "spark://spark-master:7077"

EXPOSE 8081

CMD cd ${SPARK_HOME} && \
    bin/spark-class org.apache.spark.deploy.worker.Worker --webui-port ${SPARK_WORKER_WEBUI_PORT} ${SPARK_MASTER_URI}