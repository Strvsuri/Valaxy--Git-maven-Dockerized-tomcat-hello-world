#!/bin/bash
docker stop valaxy_demo;
docker rm -f valaxy_demo;
docker image rm -f valaxy_demo;
cd /opt/docker;
docker build -t valaxy_demo .
