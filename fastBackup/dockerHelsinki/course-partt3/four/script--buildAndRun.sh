#!/bin/bash
naked docker build -t youtube-dl:alpine-3.7 -f Dockerfile.alpine .
naked docker container run youtube-dl:alpine-3.7 https://imgur.com/JY5tHqr