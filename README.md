# Vagrant CentOS 7 Box with Docker

This is a basic setup of a vagrant box with Ansible provisioning for Docker with OverlayFS.

### Requirements ###
- Ansible - [https://www.ansible.com/](https://www.ansible.com/)
- Vagrant - [https://www.vagrantup.com/](https://www.vagrantup.com/)
- Virtual Box - [https://www.virtualbox.org/](https://www.virtualbox.org/)

For tests
- Ruby
- Bundler
- ServerSpec - [http://serverspec.org/](http://serverspec.org/)

### Getting Started ###
To start simply type: `vagrant up`

You can reach any exposed ports for your containers on `192.168.50.100`

### Server Spec Tests ###

ServerSpec is included in the gemfile you can install it by running `bundle`

To run server spec tests: `rake spec`
