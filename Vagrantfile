# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Enable environment
  config.env.enable
  # Configuration for the VM
  config.vm.define "vmachine" do |vmachine|
    # Box Vagrant image to use
    vmachine.vm.box = ENV['VAGRANT_BOX']
    # Check for updates to the box on every vagrant up
    vmachine.vm.box_check_update = ENV['VAGRANT_BOX_CHECK_UPDATE']
    # Hostname vmachine
    vmachine.vm.hostname = ENV['VAGRANT_HOSTNAME']
    # Resources and provider configuration
    vmachine.vm.provider ENV['VAGRANT_DEFAULT_PROVIDER'] do |vb|
      vb.name = ENV['VAGRANT_NAME']
      vb.memory = ENV['VAGRANT_MEMORY']
      vb.cpus = ENV['VAGRANT_CPUS']
      vb.default_nic_type = ENV['VAGRANT_DEFAULT_NIC_TYPE']
    end
    # Provisioning
    vmachine.vm.provision "shell", path: "apache.sh"
    # vmachine.vm.provision "shell", path: "nginx.sh"
    vmachine.vm.provision "shell", path: "joomla.sh"
    # Forwarded ports
    vmachine.vm.network "forwarded_port", guest: ENV['VAGRANT_PORT_GUEST'], host: ENV['VAGRANT_PORT_HOST']
  end
end