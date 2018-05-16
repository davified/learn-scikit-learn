#!/usr/bin/env bash

set -e


if [[ `which conda` ]]; then
  echo "[INFO] OK Found conda!"
else
  echo "[INFO] Downloading anaconda installation script..."
  echo "[INFO] This is a 511MB file and will some time to complete..."
  curl https://repo.anaconda.com/archive/Anaconda3-5.1.0-MacOSX-x86_64.sh -o ./anaconda3.sh


  echo "[INFO] Running anaconda installation script..."
  bash anaconda3.sh -b -p ~/anaconda3

# echo 'export PATH="~/anaconda3/bin:$PATH"' >> ~/.bash_profile 
# source .bash_profile
fi
export PATH="$HOME/anaconda3/bin:$PATH"

# Update conda
# conda update conda

conda env create -f ./environment.yml

echo "[INFO] Done!"
echo "[INFO] To activate the virtual environment, run: source activate ml-101"
echo "[INFO] To deactivate the virtual environment, run: source deactivate"


