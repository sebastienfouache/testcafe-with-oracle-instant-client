#!/bin/bash

echo Your container args are: "$@"

ls -l

testcafe $1 $2 $3
