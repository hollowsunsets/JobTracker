#!/bin/sh

# cd to current script directory
scriptdir=$(dirname $0)
cd $scriptdir

GOOS=linux go build
docker build -t wills0ng/info441-summary-microservice .
go clean
docker system prune -f