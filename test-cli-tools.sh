#!/usr/bin/env bash

function version { echo "$@" | \
                   awk -F. '{ printf("%d%03d%03d%03d\n", $1,$2,$3,$4); }'; }

echo "Checking Dojo CLI tools for compiling a widget to a custom element ..."

NODE=$(which node)
if [[ -z "$NODE" ]] ; then
  echo "Node is not installed. Install it first."
  exit 1
fi

export NODE_VERSION=$(node --version)
echo NODE_VERSION is $NODE_VERSION
if [[ $(version "v14.0.0") -ge $(version $NODE_VERSION) ]] ; then
  echo "Node is older than v14.0.0. Update Node first."
  exit 2
fi

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
