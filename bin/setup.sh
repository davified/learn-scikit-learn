#!/usr/bin/env bash

set -e

if [[ $OSTYPE != "darwin"* ]]; then
  echo "[INFO] Non-Mac OSX operating system detected"
  echo "[TODO] Open http://continuum.io/downloads with your web browser"
  echo "[TODO] Download the Python 3 installer for your OS"
  echo "[TODO] Install Python 3 using all of the defaults for installation, except make sure to check 'Make Anaconda the default Python'"
  echo "[INFO] Exiting..."
  exit 0
fi

if [[ `which conda` ]]; then
  echo "[INFO] OK Found conda!"
else
  if [[ ! -f ./anaconda3.sh  ]]; then
    echo "[INFO] Downloading anaconda installation script..."
    echo "[INFO] This is a 511MB file and will some time to complete..."
    echo "downloading 511mb file"
    curl https://repo.anaconda.com/archive/Anaconda3-5.1.0-MacOSX-x86_64.sh -o ./anaconda3.sh
  fi

  echo "[INFO] Running anaconda installation script..."
  bash anaconda3.sh -b -p ~/anaconda3
fi

export PATH="$HOME/anaconda3/bin:$PATH"

if [[ ! -d "${HOME}/anaconda3/envs/ml-101" ]]; then
  echo "[INFO] Creating ml-101 virtual environment and installing dependencies..."
  conda env create -f ./environment.yml
else 
  echo "[INFO] Installing dependencies..."
  conda env update
fi

echo "[INFO] Done!"
echo "[INFO] To activate the virtual environment, run: source activate ml-101"
echo "[INFO] To deactivate the virtual environment, run: source deactivate"
