#!/usr/bin/env bash

echo "Building todo-mvc ..."

if [[ -z "$(node --version)" ]] ; then
  echo "Node.js not found. Please install it first."
fi

if [[ -z "$(npm list -g @dojo/cli)" ]]; then
  echo "@dojo/cli not installed globally. Please install it first."
fi

cd examples/packages/todo-mvc

#echo "Running npm init ..."
#npm init --yes

echo "Installing ..."
npm i

echo "Building and serving the app ..."
dojo build app -w -s
