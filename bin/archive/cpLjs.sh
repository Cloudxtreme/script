#!/bin/bash

echo on

M2_REPO=/Users/d036242/.m2/repository
TARGET=/opt/ljs/dropins

cp ~/dev/hg/odata4j/odata4j-core/target/odata4j-core-0.6.0-SNAPSHOT.jar $TARGET

cp $M2_REPO/javax/ws/rs/jsr311-api/1.1.1/jsr311-api-1.1.1.jar $TARGET
cp $M2_REPO/org/core4j/core4j/0.5/core4j-0.5.jar $TARGET
cp $M2_REPO/org/eclipse/persistence/eclipselink/2.1.2/eclipselink-2.1.2.jar $TARGET
cp $M2_REPO/org/eclipse/persistence/javax.persistence/2.0.0/javax.persistence-2.0.0.jar $TARGET
cp $M2_REPO/joda-time/joda-time/1.6/joda-time-1.6.jar $TARGET
cp $M2_REPO/junit/junit/4.8.2/junit-4.8.2.jar $TARGET
cp $M2_REPO/xmlpull/xmlpull/1.1.3.4a/xmlpull-1.1.3.4a.jar $TARGET


