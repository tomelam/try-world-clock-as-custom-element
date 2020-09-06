#!/usr/bin/env bash

echo "Checking Dojo CLI tools for compiling a widget to a custom element ..."

if [[ -z "$(node --version)" ]] ; then
  echo "Install Node first."
  exit 1
fi

if ! npm list -g @dojo/cli > /dev/null ; then
  echo "@dojo/cli not installed globally. Please install it first:"
  echo "npm i -g @dojo/cli"
  exit 3
fi

if ! npm list -g @dojo/cli-build-widget > /dev/null ; then
  echo "@dojo/cli-build-widget not installed globally. Please install it first:"
  echo "npm i -g @dojo/cli-build-widget"
  exit 4
fi
