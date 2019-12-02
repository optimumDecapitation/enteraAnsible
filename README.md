# enteraAnsible
Ansible provision for  entera example infrastructure

Provisions the Infrastructure created by terraform by remotely running a deployment script.

This script pulls down the git repos for the containers we intend to host and then runs the needed builds 

the script will clean up old files and containers before begining a fresh deployment
