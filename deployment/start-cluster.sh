#!/bin/sh

export ANSIBLE_HOST_KEY_CHECKING=False

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

cd $DIR

vagrant up

ansible-playbook start-spark.yml -i hosts -c ssh -u vagrant --private-key=~/.vagrant.d/insecure_private_key