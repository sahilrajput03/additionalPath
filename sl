#!/bin/bash
#subl $* #Earlier approach.

if [ $# -eq 0 ]
  then
    subl .
else
  subl $* #Earlier approach.
fi

#INFO: The $# variable will tell you the number of input arguments the script was passed.
#src: stackoverflow: https://stackoverflow.com/a/6482403
#src2: https://www.tutorialspoint.com/unix/if-elif-statement.htm
