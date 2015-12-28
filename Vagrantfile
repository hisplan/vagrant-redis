Vagrant.configure(2) do |config|

  config.vm.box = "hashicorp/precise64"  
  
  config.vm.hostname = "redis"
  
  config.vm.network "private_network", ip: "172.16.200.220"
  config.vm.network "forwarded_port", guest: 6379, host: 6379

  config.vm.provider "virtualbox" do |v|
    v.name = "redis"
    v.customize ["modifyvm", :id, "--memory", "512"]
    v.customize ["modifyvm", :id, "--usb", "off"]
    v.customize ["modifyvm", :id, "--usbehci", "off"]
  end

  config.vm.provision "shell", path: "./scripts/bootstrap.sh"

end
