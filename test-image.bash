#!/bin/bash

function build() {
  docker build -t 'thieux/hello' .
}

build
