#!/bin/bash

SPARK_VERSION=$1
HADOOP_VERSION=$2

echo '# Building spark-base'
docker build -t spark-base ./images/spark-base/ --build-arg SPARK_VERSION=$SPARK_VERSION --build-arg HADOOP_VERSION=$HADOOP_VERSION

echo '# Building spark-master'
docker build -t spark-master ./images/spark-master/

echo '# Building spark-worker'
docker build -t spark-worker ./images/spark-worker/