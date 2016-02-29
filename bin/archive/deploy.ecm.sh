#!/bin/bash

export TARGET_WAR=/opt/ljs/pickup
export TARGET_JAR=/opt/ljs/plugins

export SRC=~/dev/git/com.sap.ecm/com.sap.ecm.gateway.mongodb

cp `find $SRC -name gateway*.jar -print` $TARGET_JAR
cp `find $SRC -name gateway*.war -print` $TARGET_WAR
