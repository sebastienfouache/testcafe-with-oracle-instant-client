#!/bin/bash

echo Your container args are: "$@"

testcafe $1 $2 $3
