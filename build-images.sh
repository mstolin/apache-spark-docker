#!/bin/bash

if [ $# -ge 2 ]
  then
    SPARK_VERSION=$1
    HADOOP_VERSION=$2

    PWD=$(pwd)

    echo '# Building spark-base'
    docker build -t spark-base $PWD/images/spark-base/ --build-arg SPARK_VERSION=$SPARK_VERSION --build-arg HADOOP_VERSION=$HADOOP_VERSION

    echo '\n# Building spark-master'
    docker build -t spark-master $PWD/images/spark-master/

    echo '\n# Building spark-worker'
    docker build -t spark-worker $PWD/images/spark-worker/

    echo '\n# Building spark-submit'
    docker build -t spark-submit $PWD/images/spark-submit/
  else
    echo "No arguments supplied\n"
    echo "Use the script as follows:"
    echo "build-images.sh <SPARK_VERSION> <HADOOP_VERSION>"
    exit 1
fi