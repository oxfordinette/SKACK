#!/bin/bash

kubectl create deployment spark-master-deploy --image=docker.io/sandrabaraket1/spark-master
kubectl create deployment spark-worker-deploy --image=docker.io/sandrabaraket1/spark-worker
kubectl create deployment zoo-deploy --image=docker.io/sandrabaraket1/zookeeper
kubectl create deployment kafka-deploy --image=docker.io/sandrabaraket1/kafka
kubectl create deployment kafka-manager-deploy --image=docker.io/sandrabaraket1/kafka-manager
kubectl create deployment cassandra-deploy --image=docker.io/cassandra
kubectl create deployment postgres-deploy --image=docker.io/postgres


