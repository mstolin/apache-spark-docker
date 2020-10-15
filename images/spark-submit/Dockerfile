FROM spark-base
#--class org.apache.spark.examples.SparkPi --master spark://spark-master:7077 examples/jars/spark-examples_2.12-3.0.1.jar 100
ENTRYPOINT ./bin/spark-submit --class org.apache.spark.examples.SparkPi --master ${SPARK_MASTER_URI} examples/jars/spark-examples_2.12-3.0.1.jar 100