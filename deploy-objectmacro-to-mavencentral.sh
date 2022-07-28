#!/bin/sh
set -x
mvn source:jar
mvn javadoc:javadoc; mvn javadoc:jar
mvn gpg:sign-and-deploy-file \
  -DpomFile=pom.xml \
  -Dfile=sablecc-4-beta.4/lib/objectmacro.jar\
  -Dsources=./target/objectmacro-4-beta.4-sources.jar\
  -Djavadoc=./target/objectmacro-4-beta.4-javadoc.jar\
  -DrepositoryId=ossrh\
  -Durl='https://s01.oss.sonatype.org/service/local/staging/deploy/maven2/'

