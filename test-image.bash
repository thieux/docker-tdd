#!/bin/bash

. ./tester.bash

function build() {
  docker build -t 'thieux/hello' .
}

build | grep 'dummy' --quiet && ok || fail
