#!/usr/bin/env bash

echo "Checking Dojo CLI tools for compiling a widget to a custom element ..."

if [[ ! -f package.json ]] ; then
  echo "Initialize the project first:"
  echo "npm init --yes"
  exit 3
fi

if ! npm list @dojo/cli > /dev/null ; then
  echo "@dojo/cli not installed locally. Please install it first:"
  echo "npm i @dojo/cli"
  exit 4
fi

if ! npm list @dojo/cli-build-widget > /dev/null ; then
  echo "@dojo/cli-build-widget not installed locally. Please install it first:"
  echo "npm i @dojo/cli-build-widget"
  exit 5
fi
