#!/bin/bash

# TODO: it'd be nice to orchestrate this via maven...
BASEDIR=$(pwd)
BUILDDIR="$BASEDIR/tomcat"

mvn install sakai:deploy -Dmaven.tomcat.home="$BUILDDIR"

# now run the Dockerfile, which will copy the tomcat directory into the image
docker build -t sakai .
