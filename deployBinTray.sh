#!/bin/bash
### Necessary ENV variables ###
# BINTRAY_USER=
# BINTRAY_API_KEY=
# BINTRAY_SUBJECT=
# BINTRAY_REPO=
### Usage
# Sample Usage: pushToBintray.sh package version pathToP2Repo


BINTRAY_API=https://api.bintray.com/content/${BINTRAY_SUBJECT}/${BINTRAY_REPO}


PCK_NAME=$1
PCK_VERSION=$2
PATH_TO_REPOSITORY=$3


echo "==Infos"
echo "BINTRAY_SUBJECT=${BINTRAY_SUBJECT}"
echo "BINTRAY_REPO=${BINTRAY_REPO}"
# Sensible info
echo [ -z "${BINTRAY_USER}" ] && echo "No user" || echo "User set"
echo [ -z "${BINTRAY_API_KEY}" ] && echo "No api key" || echo "Api key set"

echo "PCK_NAME=${PCK_NAME}"
echo "PCK_VERSION=${PCK_VERSION}"
echo "PATH_TO_REPOSITORY=${PATH_TO_REPOSITORY}"
echo "==End Infos"

if [ ! -z "$PATH_TO_REPOSITORY" ]; then
   cd $PATH_TO_REPOSITORY
   if [ $? -ne 0 ]; then
     #directory does not exist
     echo $PATH_TO_REPOSITORY " does not exist"
     exit 1
   fi
fi

FILES=./*
BINARYDIR=./binary/*
PLUGINDIR=./plugins/*
FEATUREDIR=./features/*

for f in $FILES; do
  if [ ! -d $f ]; then
    echo "Processing $f file..."
      curl -X PUT -T $f -u ${BINTRAY_USER}:${BINTRAY_API_KEY} \
	      ${BINTRAY_API}/${PCK_NAME}/${PCK_VERSION}/$f;publish=0;override=1
    echo ""
  fi
done

echo "Processing features dir $FEATUREDIR file..."
for f in $FEATUREDIR; do
  echo "Processing feature: $f file..."
  curl -X PUT -T $f -u ${BINTRAY_USER}:${BINTRAY_API_KEY} \
      ${BINTRAY_API}/${PCK_NAME}/${PCK_VERSION}/$f;publish=0;override=1
  echo ""
done

echo "Processing plugin dir $PLUGINDIR file..."

for f in $PLUGINDIR; do
   # take action on each file. $f store current file name
  echo "Processing plugin: $f file..."
  curl -X PUT -T $f -u ${BINTRAY_USER}:${BINTRAY_API_KEY} \
      ${BINTRAY_API}/${PCK_NAME}/${PCK_VERSION}/$f;publish=0;override=1
  echo ""
done

echo "Processing binary dir $BINARYDIR file..."
if [ -d "$(dirname $BINARYDIR)" ]; then
  for f in $BINARYDIR; do
     # take action on each file. $f store current file name
    echo "Processing binary: $f file..."
    curl -X PUT -T $f -u ${BINTRAY_USER}:${BINTRAY_API_KEY} \
	    ${BINTRAY_API}/${PCK_NAME}/${PCK_VERSION}/$f;publish=0;override=1
    echo ""
  done
fi

echo "Publishing the new version"
curl -X POST -u ${BINTRAY_USER}:${BINTRAY_API_KEY} \
    ${BINTRAY_API}/${PCK_NAME}/${PCK_VERSION}/publish -d "{ \"discard\": \"false\" }"

