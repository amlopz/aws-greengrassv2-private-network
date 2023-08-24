#!/bin/bash 

# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0


#This userdata script for AWS IoT Greengrass v2 will download all of the software needed to run Greengrass and to validate the solution
#It is important to download it now, before we remove the NAT and then there is no internet access to the Greengrass device
#The following software will be downloaded:
#Install Java runtime
sudo dnf install java-11-amazon-corretto -y

#Download the AWS IoT Greengrass Core software
curl -s https://d2s8p88vqu9w66.cloudfront.net/releases/greengrass-nucleus-latest.zip > greengrass-nucleus-latest.zip
unzip greengrass-nucleus-latest.zip -d GreengrassInstaller && rm greengrass-nucleus-latest.zip
java -jar ./GreengrassInstaller/lib/Greengrass.jar --version

#aws-greengrass-gdk-cli
python3 -m pip install -U git+https://github.com/aws-greengrass/aws-greengrass-gdk-cli.git@v1.3.0


#Use the following link to set up your Greengrass device manually:
#https://docs.aws.amazon.com/greengrass/v2/developerguide/install-greengrass-core-v2.html