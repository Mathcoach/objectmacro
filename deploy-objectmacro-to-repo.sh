#!/bin/sh
set -x
mvn deploy:deploy-file \
  -DpomFile=pom.xml \
  -Dfile=sablecc-4-beta.4/lib/objectmacro.jar\
  -DrepositoryId=central \
  -Durl='https://bayes.htwsaar.de/nexus/repository/maven-snapshots/'

