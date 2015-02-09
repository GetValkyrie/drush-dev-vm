#!/bin/sh

if [ "$(id -u)" != "0" ]; then
  echo "Sorry, this script must be run as root."
  exit 1
fi

command -v ansible >/dev/null 2>&1
if [ $? -eq 1 ]; then

  aptitude update
  aptitude -y install git python-setuptools

  ansible_dir=/usr/local/lib/ansible/
  if [ ! -d $ansible_dir ]; then
    git clone --recursive --depth=1 git://github.com/ansible/ansible.git $ansible_dir
  fi

  cd $ansible_dir
  python ./setup.py install

fi
