#!/bin/bash

vagrant box remove ipa-master-f25
sudo rm /home/images/ipa-master-f25_vagrant_box_image_0.img
sudo systemctl restart libvirtd
vagrant box add /tmp/image/ipa-master-f25.box --name ipa-master-f25

