#!/bin/sh
mvn deploy:deploy-file -DgroupId=de.htwds \
  -DartifactId=objectmacro \
  -Dversion='4-beta.4' \
  -Dpackaging=jar \
  -Dfile=sablecc-4-beta.4/lib/objectmacro.jar \
  -DrepositoryId=central\
  -Durl='https://bayes.htwsaar.de/nexus/repository/maven-releases/'

