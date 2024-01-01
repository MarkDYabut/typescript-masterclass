#!/bin/sh
echo hello i will execute

# check number of arguments
if [ $# -eq 0 ]
then
    echo "No arguments supplied, running default index.ts"
    tsc src/index.ts
    node src/index.js
    rm src/index.js
elif [ $# -eq 1 ]
then
    echo "Arguments supplied, running corresponding index.ts"
    tsc src/index$1.ts
    node src/index$1.js
    rm src/index*.js
else
    echo "Passed more than 1 argument, invalid"
fi