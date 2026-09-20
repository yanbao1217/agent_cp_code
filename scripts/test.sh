#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
mkdir -p tmp

bin="tmp/solution"
g++ solution.cpp -std=c++20 -O2 -Wall -Wextra -Wshadow -Werror -o "$bin"

shopt -s nullglob
inputs=(tmp/sample_*.in)

if [ ${#inputs[@]} -eq 0 ]; then
    echo "Compile passed; no samples found in tmp/."
    exit 0
fi

for input in "${inputs[@]}"; do
    expected="${input%.in}.out"
    if [ ! -f "$expected" ]; then
        echo "FAIL: missing expected output $expected"
        exit 1
    fi

    actual="$(mktemp tmp/actual.XXXXXX)"
    set +e
    timeout 5 "$bin" < "$input" > "$actual"
    status=$?
    set -e

    if [ $status -eq 124 ]; then
        echo "FAIL: $input timed out"
        rm -f "$actual"
        exit 1
    elif [ $status -ne 0 ]; then
        echo "FAIL: $input exited with status $status"
        rm -f "$actual"
        exit 1
    fi

    echo "Testing $input"
    if diff -Z -B "$expected" "$actual"; then
        echo "PASS"
    else
        echo "FAIL"
        rm -f "$actual"
        exit 1
    fi

    rm -f "$actual"
done

echo "All samples passed."
