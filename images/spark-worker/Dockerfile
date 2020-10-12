FROM spark-base

ENV SPARK_WORKER_WEBUI_PORT 4041
ENV SPARK_MASTER_URI "spark://spark-master:7077"

EXPOSE 4041

CMD cd ${SPARK_HOME} && \
    bin/spark-class org.apache.spark.deploy.worker.Worker --webui-port ${SPARK_WORKER_WEBUI_PORT} ${SPARK_MASTER_URI}