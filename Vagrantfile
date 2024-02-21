# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # VM1 config
  # config.vm.provider :vmware_player do |vmware|
  #   vmware.utility_certificate_path = "PATH"
  # end
  config.vm.define "vm1" do |vm1|
    # Box Vagrant image to use
    vm1.vm.box = "generic/ubuntu2204"
    # Check for updates to the box on every vagrant up
    vm1.vm.box_check_update = true
    # Hostname vm1
    vm1.vm.hostname = "vm1"
    # Network configuration private net
    vm1.vm.network "private_network", ip: "192.168.100.10", nic_type: "virtio", virtualbox__intnet: "sysadmin"
    # Resources and provider configuration
    vm1.vm.provider "virtualbox" do |vb|
      vb.name = "vm1"
      vb.memory = "2048"
      vb.cpus = "2"
      vb.default_nic_type = "virtio"
    end
    # Install software
    vm1.vm.provision "shell", path: "webserver.sh"
    vm1.vm.provision "shell", path: "software.sh"
    # Forwarded ports
    vm1.vm.network "forwarded_port", guest: 80, host: 8000
  end
end