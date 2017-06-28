#!/bin/bash

# set -e

which python3
if [ $? -ne 0 ]; then
  echo "INFO: Installing python 3"
  brew install python3
fi

if [ ! -d .venv ]; then
  echo "INFO: Creating virtual env folder in current directory"
  python3 -m venv .venv
fi

echo "Activating virtual environment"
source .venv/bin/activate

pip3 install -r requirements.txt

echo "DONE"
