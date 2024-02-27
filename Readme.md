# Vagrant config machine CMS Webserver

Vagrant repository for environment setup and configuration CMS: Joomla! and/or WordPress. Also, it includes apache and nginx as web servers.

## Table of Contents

- **apache.sh**: Apache web server configuration
- **nginx.sh**: Nginx web server configuration
- **joomla.sh**: Joomla! CMS installation
- **wordpress.sh**: WordPress CMS installation
- **.env.example**: Example of environment configuration
- **Vagrantfile**: Vagrant configuration file
- **README.md**: This file

## Previous considerations

1. You must define the environment variables in the file ```.env``` to run the virtual machine. The file ```.env.example``` is an example of the configuration.
2. Config file ```Vagrantfile``` with web server configuration, nginx or apache, comment the line of the web server that you don't want to use.
3. Config file ```Vagrantfile``` with CMS configuration, Joomla! or WordPress, comment the line of the CMS that you don't want to use.
4. Install the plugin ```vagrant plugin install vagrant-env``` to use the environment variables.

## Persistent data app

The data of the CMS is stored in the folder ```/var/www/html```. This folder is shared with the host machine, so the data is persistent in folder src.

## Requirements

- [VirtualBox](https://www.virtualbox.org/)
- [Vagrant](https://www.vagrantup.com/)
- [VMware Workstation](https://www.vmware.com/products/workstation-player.html) (optional)
- [Vagrant VMware Utility](https://www.vagrantup.com/vmware/downloads.html) (optional)

## Versions

- Joomla! CMS 5.0.3
- WordPress CMS latest
- PHP 8.1
- MySQL 8.0
- Nginx
- Apache 2.4
- Ubuntu 22.04

## Installation

1. Clone the repository
2. Run `vagrant up` to start the virtual machine
3. Access the Joomla! CMS at [http://localhost:8000](http://localhost:8000)
4. Follow the installation steps for Joomla! CMS or WordPress CMS

## Commands

- `vagrant up` to start the virtual machine
- `vagrant halt` to stop the virtual machine
- `vagrant destroy` to delete the virtual machine
- `vagrant ssh` to access the virtual machine via SSH (In case of not working SSH access, use username: vagrant, password: vagrant)
- `vagrant provision` to re-run the provisioning scripts
- `vagrant reload` to restart the virtual machine
- `vagrant status` to check the status of the virtual machine

## Author

Rafael Torices
