#!/bin/bash
naked docker build . -t jekyll
naked winpty docker container run -it -p 8080:80 jekyll
