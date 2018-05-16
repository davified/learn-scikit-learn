#!/usr/bin/env bash

set -e

# if homebrew is not installed, install homebrew
if [[ `which brew` ]]; then
  echo "OK Found homebrew!"
else
  echo "INFO Installing homebrew"
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi

# if python3 is not installed, install python3 with homebrew
if [[ `which python3` ]]; then
  echo "OK Found python3!"
else
  echo "INFO: Installing python 3"
  brew install python3
fi

# create virtual environment (which is just a folder in your current project directory). '.venv' is just a name - you can name it anything you like (e.g. 'my_awesome_virtual_env'. The period in .venv is just a convention to denote it has a hidden folder that we should not commit to git.
# the if condition skips this step if folder .venv already exists
if [ ! -d .venv ]; then #
  echo "INFO: Creating virtual env folder in current directory"
  python3 -m venv .venv
fi

echo "Activating virtual environment"
source .venv/bin/activate

echo "Installing python libraries in the virtual environment directory"
pip install -r requirements.txt

echo "Adding virtual environment to jupyter notebook"
project_name=$(basename $(pwd))
python -m ipykernel install --user --name=${project_name}

echo "Done!"
