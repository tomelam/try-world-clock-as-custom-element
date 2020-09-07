#!/usr/bin/env bash

echo "Building world-clock, assuming github.com/dojo/examples cloned here ..."

if [[ ! -d examples ]] ; then
  echo "Clone the Dojo examples first:"
  echo "git clone https://github.com/dojo/examples"
  echo "Don't forget to edit world-clock's .dojorc file!"
  exit 1
fi

cd examples/packages/world-clock

if ! npm list @dojo/cli-build-widget > /dev/null ; then
  echo "@dojo/cli-build-widget not installed locally. Please install it first:"
  echo "Run 'npm i @dojo/cli-build-widget' in examples/packages/world-clock/ ."
  exit 2
fi

#echo "Installing packages (running npm install) ..."
#npm install

echo "Building world-clock widget as a custom element ..."
dojo build widget

echo "Building and serving the app ..."
dojo build app -w -s
