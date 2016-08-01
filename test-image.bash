#!/bin/bash

. ./tester.bash

function build() {
  docker build -t 'thieux/hello' .
}

function run() {
  docker run -t -i 'thieux/hello'
}

build | grep 'Successfully built' --quiet && ok || fail
run | grep 'Hello world' --quiet && ok || fail

