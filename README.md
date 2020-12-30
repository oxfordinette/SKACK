# S.K.A.C.K stack (Spark-Kubernetes-Akka-Cassandra-Kafka)

SKACK Stack est constitué d'open source pour l'analyse en temps réel du Big Data. Il se compose d'Apache Spark, Kubernetes, Akka, Apache Cassandra et Apache Kafka

## Open-sources

- Spark - Un moteur général pour le traitement de données à grande échelle, permettant des analyses depuis les requêtes SQL jusqu'à l'apprentissage automatique, l'analyse de graphes et le traitement de flux
- Kubernetes - Noyau de systèmes distribués qui fournit des ressources et une isolation entre tous les autres composants de la pile SKACK. Kubernetes est la base sur laquelle fonctionnent les autres composants de la pile SKACK.
- Akka - Une boîte à outils et un runtime pour créer facilement des applications simultanées et distribuées qui répondent aux messages.
- Cassandra - Système de gestion de base de données distribué capable de gérer de grandes quantités de données sur des serveurs avec une haute disponibilité.
- Kafka - Une plate-forme à haut débit et à faible latence pour gérer les flux de données en temps réel sans perte de données

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

### Deploy with docker-compose

Permet de lancer la stack. Les images se trouvent sur le docker hub (lien en fin de ReadMe)

    docker-compose up
    

### Deploy with kubernetes

Permet de lancer la stack sur Kubernetes. Lancement du script:

    /docker/deployment.sh
    
Exposer un service Kubernetes à l'extérieur

    /docker/expose.sh

Visualisation grâce à minikube dashboard


### List of containers

#### Apache Cassandra cluster

- `cassandra`

#### Jupyter

- `jupyter`

#### Apache Kafka cluster

- `kafka`
- `zookeeper`

#### PostgreSQL

- `postgres`

#### Apache Spark cluster

- `spark-master`
- `spark-worker`

### Apache Akka

- `akka`

#### Probe

- `probe`

Used for running applications from the command line from within the docker network.


## Access Spark workers

There are links on the Spark Cluster UI that lead you to spark workers.

To access these from the host you will need to install [sshuttle](https://github.com/sshuttle/sshuttle) and run the `scripts/ssh/sshuttle-via-probe` script. The password is `root`.


## Run an application/main written in Scala

### Prerequisites

- Install [sbt](http://www.scala-sbt.org/) (Scala Built Tool).

### Using the probe

- Start the probe container
- SSH to it using the `scripts/ssh/ssh-probe` script. The password is `root`.
- Use command line tools and access other containers using their hostname

### Run them on Probe container

- Build a fat jar `big-data-playground.jar` with `sbt assembly`. This is placed under `/target/big-data-playground/`. (Directory `/target/big-data-playground/ is mount at `/playground/` on the `probe` container.)
- SSH to the probe container (see above)
- Run a main with `java -cp /playground/big-data-playground.jar com.codiply.bdpg.SomeClassWithMain`

## Inspect a Kafka topic

SSH to the probe container and then inspect a topic with `kafkacat`

    kafkacat -C -b kafka-1 -t topic-name -f 'Topic %t[%p], offset: %o, key: %k, payload: %S bytes: %s\n'

replacing `topic-name` with the actual topic name. 

## Tools 

[DockerHub](https://hub.docker.com/repository/docker/sandrabaraket1/)


## Collaborators

ABDI Myriam (myriam.abdi@ece.edu.fr)
BARAKET Sandra (sandrabaraket@edu.ece.fr)

