#!/bin/bash
ansible-playbook -vKi hosts_runner --vault-password-file vault-password --skip-tags xcleanup create_box.yml
