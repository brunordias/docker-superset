FROM apache/superset:1.2.0

USER root

## Install requirements
RUN pip install PyAthenaJDBC
RUN pip install PyAthena
RUN pip install pymssql

## Superset confs
COPY ./docker/docker-entrypoint.sh /usr/bin/docker-entrypoint.sh
ADD ./docker /app/docker
