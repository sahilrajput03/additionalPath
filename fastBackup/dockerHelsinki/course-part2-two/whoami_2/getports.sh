#!/bin/bash
#Get extenal port to which the containers are mapped to!!
naked docker-compose port --index 1 whoami 8000 
naked docker-compose port --index 2 whoami 8000 
naked docker-compose port --index 3 whoami 8000 
#                                       ^^ this is cotainer's internal port.
# Sample output: 0.0.0.0:32770 


# Remember to put docker-vm's address instead of 0.0.0.0 in below commands.
# Below commands will show you appropriate data served at such ports.
# curl 0.0.0.0:32769 
# curl 0.0.0.0:32768 
# curl 0.0.0.0:32770
