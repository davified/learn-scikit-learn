#!/bin/bash

# set -e

if [[ `which brew` ]]; then
  echo "OK Found homebrew!"
else
  echo "INFO Installing homebrew"
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi

which python3 >/dev/null
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

echo "Installing python libraries"
pip3 install -r requirements.txt


echo "Adding virtual environment to jupyter notebook"
project_name=$(basename $(pwd))
python -m ipykernel install --user --name=${project_name}

echo "Done!"
