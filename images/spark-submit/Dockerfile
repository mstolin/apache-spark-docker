FROM spark-base

RUN apt-get update -qy && \
    apt-get install -y python3 python3-pip && \
    pip3 install pyspark

ENV PYSPARK_PYTHON=python3