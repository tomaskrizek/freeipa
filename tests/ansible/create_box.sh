#!/bin/bash
ansible-playbook -Ki hosts_runner --vault-password-file vault-password --tags package_box --skip-tags cleanup create_box.yml
