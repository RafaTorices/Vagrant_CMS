# Vagrant config machine CMS Webserver

Vagrant repository for environment setup and configuration CMS: Joomla! and/or WordPress. Also, it includes apache and nginx as web servers.

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

>NOTE: Config file ```.env``` is required to run the virtual machine. You can create a copy of the file ```.env.example``` and rename it to ```.env```. Then, you can modify the file with your own configuration.

1. Clone the repository
2. Install plugin ```vagrant plugin install vagrant-env```
3. Run `vagrant up` to start the virtual machine
4. Access the Joomla! CMS at [http://localhost:8000](http://localhost:8000)

## Author

Rafael Torices
