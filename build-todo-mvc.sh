#!/usr/bin/env bash

echo "Building todo-mvc, assuming github.com/dojo/examples cloned here ..."

if [[ ! -d examples ]] ; then
  echo "Clone the Dojo examples first:"
  echo "git clone https://github.com/dojo/examples"
  echo "Don't forget to edit todo-mvc's .dojorc file!"
  exit 1
fi

cd examples/packages/todo-mvc

if ! npm list @dojo/cli-build-widget > /dev/null ; then
  echo "@dojo/cli-build-widget not installed locally. Please install it first:"
  echo "npm i @dojo/cli-build-widget"
  exit 4
fi

echo "Building and serving the app ..."
dojo build app -w -s
