# TL;TR

Simple way to create an Apache Spark cluster with Prometheus and cAdvisor monitoring.

# How to

## 1. Build the images

Use the `build-images.sh` script to build the necessary images.

```
$ sh build-images.sh SPARK_VERSION HADOOP_VERSION
$ sh build-images.sh 3.0.1 2.7
```

See https://spark.apache.org/downloads.html for versions.

## 2. Create the cluster

```
$ sh start-swarm.sh
```

## 3. Test the cluster

At first you need to login to the master shell.

```
$ docker run --rm -it --network apache-spark-docker_default spark-master /bin/sh
```

Run the `SparkPI` example application inside the spark-master shell.

```
$ /usr/bin/spark/bin/spark-submit --master spark://spark-master:7077 \
  --class org.apache.spark.examples.SparkPi \
  /usr/bin/spark/examples/jars/spark-examples_2.12-3.0.1.jar 1000
```

You can find the master node web-ui at http://localhost:8080/ to have a look at the
running applications.
