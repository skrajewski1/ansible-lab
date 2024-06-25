#!/bin/bash
#install amazon ansible-ec2 plugin

ansible-galaxy collection install amazon.aws
# # install ansible with python3
sudo yum update -y
sudo amazon-linux-extras install python3.8 -y
sudo pip3.8 install ansible

# #install boto3 and botocore
sudo pip3.8 install boto3 botocore awscli
#change terminal color
echo "PS1='\e[1;32m\u@\h \w$ \e[m'" >> /home/ec2-user/.bash_profile

sudo yum install git -y
#/bin/mkdir /home/ec2-user/ansible-dev
git clone https://github.com/skrajewski1/ansible-lab2.git
cp -r ansible-lab2/* /home/ec2-user/
