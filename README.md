# SKACK
Data Analytics Stack on Kubernetes

## Prerequisites

Installation de: 
- [Docker](https://www.docker.com/) and
- [Docker Compose](https://docs.docker.com/compose/) (if it is not part of the Docker installation on your platform).

### For Kubernetes:
- Installation de minikube
- Lancement de minikube (minikube start)
- Visualisation des noeuds (minikube dashboard)

- [Apache Cassandra](http://cassandra.apache.org/)
- [Apache Kafka](http://kafka.apache.org/)
- [Apache Spark](http://spark.apache.org/)
- [Kubernetes](https://kubernetes.io/)

## Docker containers

### Build the docker images

You can build all docker images in advance by running

    scripts/docker-compose/build-all

### Deploy with docker-compose

The following containers are defined in groups in `docker/compose/docker-compose.{group}.yml`.

To start a group of containers run the corresponding script

    scripts/docker-compose/{group}-up
    

### Deploy with kubernetes




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

-DockerHub
https://hub.docker.com/repository/docker/sandrabaraket1/docker


## Collaborators

ABDI Myriam (myriam.abdi@ece.edu.fr)
BARAKET Sandra (sandrabaraket@edu.ece.fr)

