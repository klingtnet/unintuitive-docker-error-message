#!/bin/sh

docker build -t error .\
&& docker run --rm -v $PWD/missing.sh:/usr/bin/foo:ro -it error
