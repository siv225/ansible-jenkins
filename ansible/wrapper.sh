#!/bin/bash

## capture all the logs in file ###

ansible localhost -m template -a "src=./ansible.cfg.j2 dest=./ansible.cfg" --extra-vars "@input.yaml"

ansible localhost -m template -a "src=./all.j2 dest=./group_vars/all" --extra-vars "@input.yaml"

#VAR1=`grep -i "env_name" input.yaml | awk '{print $2}'`
#echo $VAR1
#ansible-playbook -i ./group_vars/$VAR1_hosts site.yaml 
ansible-playbook site.yaml
