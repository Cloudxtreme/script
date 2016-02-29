#!/bin/bash

export REL=1.0.0

export SRC_PATH=./target/
export DIST_PATH=./odata2-dist/

# git checkout ${REL}

# mvn clean install -Pbuild.quality

# mvn clean install -Papache-release

# MD5
openssl md5 < ${SRC_PATH}olingo-odata2-parent-incubating-${REL}-source-release.zip > ${SRC_PATH}olingo-odata2-parent-incubating-${REL}-source-release.zip.md5
                                         
openssl md5 < ${DIST_PATH}javadoc/target/olingo-odata2-dist-javadoc-incubating-${REL}-javadoc.zip > ${DIST_PATH}javadoc/target/olingo-odata2-dist-javadoc-incubating-${REL}-javadoc.zip.md5
openssl md5 < ${DIST_PATH}lib/target/olingo-odata2-dist-lib-incubating-${REL}-lib.zip > ${DIST_PATH}lib/target/olingo-odata2-dist-lib-incubating-${REL}-lib.zip.md5
openssl md5 < ${DIST_PATH}jpa/target/olingo-odata2-dist-jpa-incubating-${REL}-jpa.zip > ${DIST_PATH}jpa/target/olingo-odata2-dist-jpa-incubating-${REL}-jpa.zip.md5
openssl md5 < ${DIST_PATH}ref/target/olingo-odata2-dist-ref-incubating-${REL}-ref.zip > ${DIST_PATH}ref/target/olingo-odata2-dist-ref-incubating-${REL}-ref.zip.md5

#SHA
gpg --print-md SHA512 ${SRC_PATH}olingo-odata2-parent-incubating-${REL}-source-release.zip > ${SRC_PATH}olingo-odata2-parent-incubating-${REL}-source-release.zip.sha

gpg --print-md SHA512 ${DIST_PATH}javadoc/target/olingo-odata2-dist-javadoc-incubating-${REL}-javadoc.zip > ${DIST_PATH}javadoc/target/olingo-odata2-dist-javadoc-incubating-${REL}-javadoc.zip.sha
gpg --print-md SHA512 ${DIST_PATH}lib/target/olingo-odata2-dist-lib-incubating-${REL}-lib.zip > ${DIST_PATH}lib/target/olingo-odata2-dist-lib-incubating-${REL}-lib.zip.sha
gpg --print-md SHA512 ${DIST_PATH}jpa/target/olingo-odata2-dist-jpa-incubating-${REL}-jpa.zip > ${DIST_PATH}jpa/target/olingo-odata2-dist-jpa-incubating-${REL}-jpa.zip.sha
gpg --print-md SHA512 ${DIST_PATH}ref/target/olingo-odata2-dist-ref-incubating-${REL}-ref.zip > ${DIST_PATH}ref/target/olingo-odata2-dist-ref-incubating-${REL}-ref.zip.sha


mkdir ~/public_html/olingo/release-${REL}
scp ${SRC_PATH}olingo-odata2-parent-incubating-${REL}-source-release.*  sklevenz@people.apache.org:~/public_html/olingo/release-${REL}

scp ${DIST_PATH}javadoc/target/olingo-odata2-dist-javadoc-incubating-${REL}-javadoc.*  sklevenz@people.apache.org:~/public_html/olingo/release-${REL}
scp ${DIST_PATH}lib/target/olingo-odata2-dist-lib-incubating-${REL}-lib.*  sklevenz@people.apache.org:~/public_html/olingo/release-${REL}
scp ${DIST_PATH}jpa/target/olingo-odata2-dist-jpa-incubating-${REL}-jpa.*  sklevenz@people.apache.org:~/public_html/olingo/release-${REL}
scp ${DIST_PATH}ref/target/olingo-odata2-dist-ref-incubating-${REL}-ref.*  sklevenz@people.apache.org:~/public_html/olingo/release-${REL}
