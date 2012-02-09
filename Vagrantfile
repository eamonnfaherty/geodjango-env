Vagrant::Config.run do |config|
  config.vm.box = "lucid32"
  
  config.vm.forward_port 80, 8080
  config.vm.forward_port 8000, 8000
  config.vm.forward_port 5432, 5432

  # Share an additional folder to the guest VM. The first argument is
  # an identifier, the second is the path on the guest to mount the
  # folder, and the third is the path on the host to the actual folder.
  # config.vm.share_folder "v-data", "/vagrant_data", "../data"


  # Enable provisioning with chef solo, specifying a cookbooks path (relative
  # to this Vagrantfile), and adding some recipes and/or roles.  
  config.vm.provision :chef_solo do |chef|
    chef.provisioning_path = "/var/vagrant-chef"
    chef.cookbooks_path = "cookbooks"
    chef.add_recipe "apt"
    chef.add_recipe "vim"
    chef.add_recipe "screen"
    chef.add_recipe "git"
    chef.add_recipe "nginx"
    chef.add_recipe "geos"
    chef.add_recipe "proj4"
    chef.add_recipe "postgis"
    chef.add_recipe "database"
    chef.add_recipe "python-virtualenv"
    chef.add_recipe "virtualenvwrapper"
    chef.add_recipe "python-pip"
    chef.add_recipe "virtualbox-guesttools"
  end

end
