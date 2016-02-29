#!/bin/bash

export VERSION=1.0.0
export NEWVERSION=1.0.1-SNAPSHOT

mvn versions:set -DnewVersion=${VERSION}
find . -name '*.versionsBackup' -type f -delete
git add .
git commit -am "Issue OLINGO-25 - make release - set version ${VERSION}"
git tag -f rel-${VERSION}

mvn versions:set -DnewVersion=${NEWVERSION}
find . -name '*.versionsBackup' -type f -delete
git add .
git commit -am "Issue OLINGO-25 - make release - set version ${NEWVERSION}"




