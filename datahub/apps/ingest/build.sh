#!/bin/sh

echo "ingest build"
cd ingest

mvn clean install

cp -f ingest-adapter/target/ingest-adapter-1.0.0.jar ingest-daemon/src/main/docker/agent/lib/
cp -f ingest-core/target/ingest-core-1.0.0.jar ingest-daemon/src/main/docker/agent/lib/

echo "ingest-admon docker build"
cd ingest-daemon
mvn dockerfile:build -DU_ID=$(id -u) -DG_ID=$(id -g) -DUSER=${USER} -DTZ=Asia/Seoul

cd ..

echo "ingest-web docker build"
cd ingest-web
mvn dockerfile:build -DU_ID=$(id -u) -DG_ID=$(id -g) -DUSER=${USER} -DTZ=Asia/Seoul
