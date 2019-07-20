#!/bin/sh
MY=$(whoami)
if [ ! -d /usr/local/Cellar ]; then
  echo "Making /usr/local/Cellar. Please enter your password to gain administrator's permission."
  sudo mkdir /usr/local/Cellar
  sudo chown $MY /usr/local/Cellar
fi
if [ ! -d /usr/local/Cellar/poppler/0.77.0/share/poppler ]; then
  mkdir -p /usr/local/Cellar/poppler/0.77.0/share
  tar xCf /usr/local/Cellar/poppler/0.77.0/share poppler-data-0.77.0.tar.gz
else
  echo "/usr/local/Cellar/poppler/0.77.0/share/poppler already exists."
fi
echo "Done."
