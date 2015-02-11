# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision "shell",
    path: "https://raw.githubusercontent.com/GetValkyrie/ansible-bootstrap/master/install-ansible.sh"
  config.vm.provision "shell",
    inline: "ansible-galaxy install -r /vagrant/ansible/requirements.yml -p /vagrant/ansible/roles/ --force"
  config.vm.provision "shell",
    #inline: "PYTHONUNBUFFERED=1 ANSIBLE_FORCE_COLOR=true ansible-playbook /vagrant/ansible/site.yml -i /vagrant/ansible/inventory",
    inline: "ANSIBLE_FORCE_COLOR=true ansible-playbook /vagrant/ansible/site.yml -i /vagrant/ansible/inventory",
    keep_color: true

end
