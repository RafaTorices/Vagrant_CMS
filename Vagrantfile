# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.env.enable
  config.vm.define "vmachine" do |vmachine|
    # Box Vagrant image to use
    vmachine.vm.box = ENV['VAGRANT_BOX']
    # Check for updates to the box on every vagrant up
    vmachine.vm.box_check_update = ENV['VAGRANT_BOX_CHECK_UPDATE']
    # Hostname vmachine
    vmachine.vm.hostname = ENV['VAGRANT_HOSTNAME']
    # Network configuration private net
    vmachine.vm.network "private_network", ip: "192.168.100.10", nic_type: "virtio", virtualbox__intnet: "sysadmin"
    # Resources and provider configuration
    vmachine.vm.provider ENV['VAGRANT_DEFAULT_PROVIDER'] do |vb|
      vb.name = ENV['VAGRANT_NAME']
      vb.memory = ENV['VAGRANT_MEMORY']
      vb.cpus = ENV['VAGRANT_CPUS']
      vb.default_nic_type = ENV['VAGRANT_DEFAULT_NIC_TYPE']
    end
    # Install software
    #vmachine.vm.provision "shell", path: "webserver.sh"
    #vmachine.vm.provision "shell", path: "software.sh"
    # Forwarded ports
    vmachine.vm.network "forwarded_port", guest: 80, host: 8000
  end
end