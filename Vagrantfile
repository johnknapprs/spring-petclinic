# frozen_string_literal: true

Vagrant.configure('2') do |config|
  # Target Vagrant Box to Pull and Launch
  config.vm.box = 'liatrio/jenkinsnexus'
  config.vm.box_version = '0.0.1'

  config.vm.network 'forwarded_port', guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  config.vm.network 'forwarded_port', guest: 80, host: 8080, host_ip: '127.0.0.1'

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network 'private_network', ip: '192.168.33.10'

  config.vm.provider 'virtualbox' do |vb|
    vb.name = 'Demo'
  end

  config.vm.provision 'shell', inline: <<-SHELL
      yum -y update
      yum -y install curl libcurl nano ruby
      curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -
      yum -y install nodejs
      npm i -g smee-client
      # smee --url https://smee.io/GSm1B40sRfBvSjYS --path /github-webhook/ --port 8080
  SHELL
end
