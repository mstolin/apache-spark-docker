# TL;TR

This is a very simple docker-compose setup to create an Apache Spark cluster. There are just three docker images that have to be built before you
create your container (`spark-base`, `spark-master` and `spark-worker`). After you have build those images you are free to create services and container
according to your needs.

# How to

## Build the images

Use the `build-images.sh` script to build the necessary images.

```
$ sh build-images.sh SPARK_VERSION HADOOP_VERSION
$ sh build-images.sh 3.0.0 2.7
```

## Create the cluster

Change the `docker-compose.yml` file according to your needs.
After that, run `docker-compose up` to create the cluster.
You can find the master node web-ui at http://localhost:8080/.
