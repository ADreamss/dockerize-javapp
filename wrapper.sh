#!/bin/bash

if [[ $# == '0' ]]; then
  echo "Executing default actions"
  ant
  java -jar dist/sample-java-project-1.0-SNAPSHOT-all.jar --name $NAME
else
  echo "Executing: $@"
  $@
fi
