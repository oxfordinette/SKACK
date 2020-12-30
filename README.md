# S.K.A.C.K stack (Spark-Kubernetes-Akka-Cassandra-Kafka)

SKACK Stack est constitué d'open source pour l'analyse en temps réel du Big Data. Il se compose d'Apache Spark, Kubernetes, Akka, Apache Cassandra et Apache Kafka

## Open-sources

- Spark - Un moteur général pour le traitement de données à grande échelle, permettant des analyses depuis les requêtes SQL jusqu'à l'apprentissage automatique, l'analyse de graphes et le traitement de flux
- Kubernetes - Noyau de systèmes distribués qui fournit des ressources et une isolation entre tous les autres composants de la pile SKACK. Kubernetes est la base sur laquelle fonctionnent les autres composants de la pile SKACK.
- Akka - Une boîte à outils et un runtime pour créer facilement des applications simultanées et distribuées qui répondent aux messages.
- Cassandra - Système de gestion de base de données distribué capable de gérer de grandes quantités de données sur des serveurs avec une haute disponibilité.
- Kafka - Une plate-forme à haut débit et à faible latence pour gérer les flux de données en temps réel sans perte de données

![alt text](https://github.com/oxfordinette/SKACK/blob/main/Bigdata.png)

## Prerequisites
 
[Install Docker](https://www.docker.com/) 

[Install Docker Compose](https://docs.docker.com/compose/)

[Install Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/) 

Start Minikube with:
```
minikube start
```

Verify that everything is OK with:
```
minikube status
```

Visualisation:
```
minikube dashboard
```
## Deployment

### Deploy with docker-compose

Permet de lancer la stack. Les images se trouvent sur le docker hub (lien en fin de ReadMe)

    docker-compose up
    

### Deploy with kubernetes

Permet de lancer la stack sur Kubernetes. Lancement du script:

    /docker/deployment.sh
    
Exposer un service Kubernetes à l'extérieur

    /docker/expose.sh

Visualisation grâce à minikube dashboard


## List of containers

#### Apache Cassandra cluster

- `cassandra`

#### Jupyter

- `jupyter`

#### Apache Kafka cluster

- `kafka`
- `kafka-manager`
- `zookeeper`

#### PostgreSQL

- `postgres`

#### Apache Spark cluster

- `spark-master`
- `spark-worker`

### Apache Akka

- `akka`


## Run an application 

Jupyter (UI): localhost:8888

Dataset to test SKACK stack:

```
/jupyter/
```

## Tools 

[DockerHub](https://hub.docker.com/repository/docker/sandrabaraket1/)


## Collaborators

ABDI Myriam (myriam.abdi@ece.edu.fr)
BARAKET Sandra (sandrabaraket@edu.ece.fr)

