#!/usr/bin/env bash

cd $1
messages=$(/blox render $2)

echo "::set-output name=messages::$messages"
