#!/bin/bash

. ./tester.bash

function build() {
  docker build -t 'thieux/hello' .
}

function run() {
  docker run 'thieux/hello' /bin/echo 'Hello world'
}

build | grep 'Successfully built' --quiet && ok || fail
run | grep 'Hello world' --quiet && ok || fail

