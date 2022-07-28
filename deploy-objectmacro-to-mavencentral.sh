#!/bin/sh
set -x
mvn gpg:sign-and-deploy-file \
  -DpomFile=pom.xml \
  -Dfile=sablecc-4-beta.4/lib/objectmacro.jar\
  -DrepositoryId=ossrh\
  -Durl='https://s01.oss.sonatype.org/service/local/staging/deploy/maven2/'

