# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "vmachine" do |vmachine|
    # Box Vagrant image to use
    vmachine.vm.box = "generic/ubuntu2204"
    # Check for updates to the box on every vagrant up
    vmachine.vm.box_check_update = true
    # Hostname vmachine
    vmachine.vm.hostname = "vmachine"
    # Network configuration private net
    vmachine.vm.network "private_network", ip: "192.168.100.10", nic_type: "virtio", virtualbox__intnet: "sysadmin"
    # Resources and provider configuration
    vmachine.vm.provider "virtualbox" do |vb|
      vb.name = "vmachine"
      vb.memory = "2048"
      vb.cpus = "2"
      vb.default_nic_type = "virtio"
    end
    # Install software
    vmachine.vm.provision "shell", path: "webserver.sh"
    vmachine.vm.provision "shell", path: "software.sh"
    # Forwarded ports
    vmachine.vm.network "forwarded_port", guest: 80, host: 8000
  end
end