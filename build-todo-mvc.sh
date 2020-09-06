#!/usr/bin/env bash

echo "Building todo-mvc, assuming github.com/dojo/examples cloned here ..."

cd examples/packages/todo-mvc

echo "Running npm init ..."
npm init --yes

echo "Testing installation of Dojo CLI tools ..."

if [[ -z "$(node --version)" ]] ; then
  echo "Install Node first."
  exit 1
fi

if ! npm list @dojo/cli > /dev/null ; then
  echo "@dojo/cli not installed locally. Please install it first:"
  echo "npm i @dojo/cli"
  exit 2
fi

echo "Installing ..."
npm i

echo "Building and serving the app ..."
dojo build app -w -s
