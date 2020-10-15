FROM spark-base

RUN apt-get update -qy && \
    apt-get install -y python3 python3-pip && \
    pip3 install pyspark && \
    mkdir /usr/bin/submit/

COPY submit.sh /usr/bin/submit/

ENTRYPOINT [ "/usr/bin/submit/submit.sh" ]