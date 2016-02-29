#!/bin/bash

cd ~/dev/hg/core4j/core4j
mvn clean install -Dgpg.passphrase=skl50815 $1

cd ~/dev/hg/odata4j/odata4j-core
mvn clean install -Dgpg.passphrase=skl50815 $1

