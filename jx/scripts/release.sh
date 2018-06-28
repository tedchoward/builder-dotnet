#!/bin/bash

ORG=tedchoward
APP_NAME=builder-dotnet
VERSION=1.0.2

docker build -t docker.io/$ORG/$APP_NAME:${VERSION} .
docker push docker.io/$ORG/$APP_NAME:${VERSION}
docker tag docker.io/$ORG/$APP_NAME:${VERSION} docker.io/$ORG/$APP_NAME:latest

git tag -fa v${VERSION} -m "Release version ${VERSION}"
git push origin v${VERSION}
