#!/bin/bash

. ./tester.bash

function build() {
  docker build -t 'thieux/hello' .
}

build | grep 'Successfully built' --quiet && ok || fail
