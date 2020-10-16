FROM openjdk:8-jre

ARG SPARK_VERSION
ARG HADOOP_VERSION

RUN apt-get update -qy && \
    apt-get install -y procps python3 python3-pip && \
    mkdir /usr/bin/spark/ && \
    curl https://ftp-stud.hs-esslingen.de/pub/Mirrors/ftp.apache.org/dist/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz -o spark.tgz && \
    tar -xf spark.tgz && \
    mv spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}/* /usr/bin/spark/ && \
    rm -rf spark.tgz && \
    rm -rf spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}/

ENV SPARK_HOME /usr/bin/spark
ENV SPARK_NO_DAEMONIZE true
ENV PYSPARK_DRIVER_PYTHON python3
ENV PYSPARK_PYTHON python3
ENV PATH /usr/bin/spark/bin:/usr/bin/spark/sbin:$PATH

WORKDIR ${SPARK_HOME}