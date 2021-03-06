#!/usr/bin/env bash

echo  "GOOS=linux go build"
 GOOS=linux go build -o grpc-client

docker build -t clarechu/grpc-client:v1.0 .

docker push clarechu/grpc-client:v1.0

rm -rf grpc-client