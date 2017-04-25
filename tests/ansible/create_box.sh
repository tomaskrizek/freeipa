#!/bin/bash
ansible-playbook -i hosts_runner --vault-password-file vault-password create_box.yml
