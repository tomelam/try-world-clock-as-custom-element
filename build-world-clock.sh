#!/usr/bin/env bash

echo "Building world-clock ..."

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

if ! npm list @dojo/cli-build-widget > /dev/null ; then
  echo "@dojo/cli-build-widget not installed locally. Please install it first:"
  echo "npm i @dojo/cli-build-widget"
  exit 3
fi

cd examples/packages/world-clock

#echo "Running npm init ..."
#npm init --yes

echo "Installing ..."
npm i

echo "Building world-clock widget as a custom element ..."
dojo build widget

echo "Building and serving the app ..."
dojo build app -w -s
