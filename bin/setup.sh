#!/usr/bin/env bash

set -e

if [[ `which brew` ]]; then
  echo "OK Found homebrew!"
else
  echo "INFO Installing homebrew"
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi

if [[ `which python3` ]]; then
  echo "OK Found python3!"
else
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
pip install -r requirements.txt

echo "Adding virtual environment to jupyter notebook"
project_name=$(basename $(pwd))
python -m ipykernel install --user --name=${project_name}

echo "Done!"
