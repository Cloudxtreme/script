#!/bin/bash

cd ~/dev/hg/core4j/core4j
mvn deploy:deploy-file -Durl=http://nexus:8081/nexus/content/repositories/deploy.snapshots/ -Dfile=./target/core4j-0.5-SNAPSHOT.jar -DpomFile=./target/core4j-0.5-SNAPSHOT.pom

cd ~/dev/hg/odata4j/odata4j-core
mvn deploy:deploy-file -Durl=http://nexus:8081/nexus/content/repositories/deploy.snapshots/ -Dfile=./target/odata4j-0.5-SNAPSHOT.jar -DpomFile=./target/odata4j-0.5-SNAPSHOT.pom

