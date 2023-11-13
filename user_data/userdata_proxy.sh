#!/bin/bash 

# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0


#This userdata file is used to set up the TinyProxy

sudo apt install tinyproxy -y

sudo systemctl start tinyproxy
sudo systemctl enable tinyproxy

#To configure tinyproxy go to:
#/etc/tinyproxy
#open tinyproxy.conf
#You can use the defaul port or you can change it.
#We allowed the whole vpc access by using 10.0.0.0/8, but you can change this to fit your needs