FROM spark-base

RUN apt-get update -qy && \
    apt-get install -y python3 python3-pip && \
    pip3 install pyspark && \
    mkdir /usr/bin/submit/ && \
    mkdir /opt/spark-apps

COPY submit.sh /usr/bin/submit/

ENV PYSPARK_DRIVER_PYTHON python3
ENV PYSPARK_PYTHON python3

ENTRYPOINT [ "/usr/bin/submit/submit.sh" ]