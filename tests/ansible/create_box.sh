#!/bin/bash
chmod 600 keys/vagrant
chmod 600 keys/freeipa_pr_ci_insecure
ansible-playbook -vKi hosts_runner --vault-password-file vault-password --skip-tags xcleanup create_box.yml
