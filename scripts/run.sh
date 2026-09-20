#!/bin/bash
set -e

g++ solution.cpp -std=c++20 -O2 -Wall -Wextra -o solution

if [ $# -eq 0 ]; then
    ./solution
else
    ./solution < "$1"
fi