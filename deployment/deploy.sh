#!/bin/sh

export ANSIBLE_HOST_KEY_CHECKING=False

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

cd $DIR

while getopts "f" opt; do
  case $opt in
    f)
      echo "=> destroying vagrant boxes"
      vagrant destroy -f
      ;;
  esac
done

vagrant up

ansible-playbook playbook.yml -i hosts -c ssh -u vagrant --private-key=~/.vagrant.d/insecure_private_key