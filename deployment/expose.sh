#!/bin/bash

kubectl expose deployments/spark-master-deploy --type="NodePort" --port 7077
kubectl expose deployments/spark-worker-deploy --type="NodePort" --port 8081
kubectl expose deployments/zoo-deploy --type="NodePort" --port 2181
kubectl expose deployments/kafka-deploy --type="NodePort" --port 9092
kubectl expose deployments/kafka-manager-deploy --type="NodePort" --port 9000
kubectl expose deployments/cassandra-deploy --type="NodePort" --port 7000
kubectl expose deployments/postgres-deploy --type="NodePort" --port 5433
kubectl expose deployments/akka-deploy --type="NodePort" --port 1600
kubectl expose deployments/jupyter-deploy --type="NodePort" --port 8888




