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

## Requirements

- [VirtualBox](https://www.virtualbox.org/)
- [Vagrant](https://www.vagrantup.com/)
- [VMware Workstation](https://www.vmware.com/products/workstation-player.html) (optional)
- [Vagrant VMware Utility](https://www.vagrantup.com/vmware/downloads.html) (optional)

## Versions

- Joomla! CMS 5.0.3
- PHP 8.1
- MySQL 8.0
- Nginx
- Ubuntu 22.04

## Installation

1. Clone the repository
2. Run `vagrant up` to start the virtual machine
3. Access the Joomla! CMS at [http://localhost:8000](http://localhost:8000)

## Author

Rafael Torices
