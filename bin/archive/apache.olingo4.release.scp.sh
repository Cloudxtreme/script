#!/bin/bash

export REL=0.1.0-SNAPSHOT

export SRC_PATH=./target/
export DIST_PATH=./dist/

# git checkout ${REL}

# mvn clean install -Pbuild.quality

# mvn clean install -Papache-release

# MD5
openssl md5 < ${SRC_PATH}olingo-parent-${REL}-source-release.zip > ${SRC_PATH}olingo-parent-${REL}-source-release.zip.md5
                                         
openssl md5 < ${DIST_PATH}javadoc/target/olingo-dist-javadoc-${REL}-javadoc.zip > ${DIST_PATH}olingo-dist-javadoc-${REL}-javadoc.zip.md5
openssl md5 < ${DIST_PATH}client-lib/target/olingo-dist-client-lib-${REL}-lib.zip > ${DIST_PATH}client-lib/target/olingo-dist-client-lib-${REL}-lib.zip.md5
openssl md5 < ${DIST_PATH}server-lib/target/olingo-dist-server-lib-${REL}-lib.zip > ${DIST_PATH}server-lib/target/olingo-dist-server-lib-${REL}-lib.zip.md5
openssl md5 < ${DIST_PATH}android-lib/target/olingo-dist-android-lib-${REL}-lib.zip > ${DIST_PATH}android-lib/target/olingo-dist-android-lib-${REL}-lib.zip.md5

#SHA
gpg --print-md SHA512 ${SRC_PATH}olingo-parent-${REL}-source-release.zip > ${SRC_PATH}olingo-parent-${REL}-source-release.zip.sha

gpg --print-md SHA512 ${DIST_PATH}javadoc/target/olingo-dist-javadoc-${REL}-javadoc.zip > ${DIST_PATH}javadoc/target/olingo-dist-javadoc-${REL}-javadoc.zip.sha
gpg --print-md SHA512 ${DIST_PATH}client-lib/target/olingo-dist-client-lib-${REL}-lib.zip > ${DIST_PATH}client-lib/target/olingo-dist-client-lib-${REL}-lib.zip.sha
gpg --print-md SHA512 ${DIST_PATH}server-lib/target/olingo-dist-server-lib-${REL}-lib.zip > ${DIST_PATH}server-lib/target/olingo-dist-server-lib-${REL}-lib.zip.sha
gpg --print-md SHA512 ${DIST_PATH}android-lib/target/olingo-dist-android-lib-${REL}-lib.zip > ${DIST_PATH}android-lib/target/olingo-dist-android-lib-${REL}-lib.zip.sha


#mkdir ~/public_html/olingo4/release-${REL}
scp ${SRC_PATH}olingo-parent-${REL}-source-release.*  sklevenz@people.apache.org:~/public_html/olingo4/release-${REL}

scp ${DIST_PATH}javadoc/target/olingo-dist-javadoc-${REL}-javadoc.*  sklevenz@people.apache.org:~/public_html/olingo4/release-${REL}
scp ${DIST_PATH}client-lib/target/olingo-dist-client-lib-${REL}-lib.*  sklevenz@people.apache.org:~/public_html/olingo4/release-${REL}
scp ${DIST_PATH}server-lib/target/olingo-dist-server-lib-${REL}-lib.*  sklevenz@people.apache.org:~/public_html/olingo4/release-${REL}
scp ${DIST_PATH}android-lib/target/olingo-dist-android-lib-${REL}-lib.* sklevenz@people.apache.org:~/public_html/olingo4/release-${REL}
