#!/bin/bash

# Fix private key permissions
chmod 600 keys/vagrant
chmod 600 keys/freeipa_pr_ci_insecure

# Show contents of rpms directory
ls rpms

# Prompt for confirmation
read -p "Proceed with these packages? [y/N] " -n 1 -r
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    # handle exits from shell or function but don't exit interactive shell
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1
fi

# Run playbook to create box
ansible-playbook -vKi hosts_runner --vault-password-file vault-password --skip-tags xcleanup create_box.yml

