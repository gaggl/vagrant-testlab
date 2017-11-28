#  vagrant-testlab

A vagrant setup that create a puppetmaster, consul, ELK, Prometheus, Icinga setup 

## Requirements
    Virtualbox                  => https://www.virtualbox.org
    Vagrant                     => http://www.vagrantup.com
    vagrant-hostmanager         => vagrant plugin install vagrant-hostmanager
    vagrant-puppet-install      => vagrant plugin install vagrant-puppet-install
    vagrant-cachier  (optional) => vagrant plugin install vagrant-cachier
    vagrant-triggers (optional) => vagrant plugin install vagrant-triggers
    
## Preparation
    git submodule update --init
    
## Setup
    vagrant up

## (G)UI interfaces

    consul     => http://consul.gaggl.vagrant:8500
    foreman    => https://puppet.gaggl.vagrant
        username: admin
        passwd  : secret
    grafana    => grafana.gaggl.vagrant
        username: admin
        passwd  : secret
    icinga     => icinga.gaggl.vagrant
        username: icinga
        passwd  : icinga
    kibana     => kibana.gaggl.vagrant
    puppetdb   => http://puppet.gaggl.vagrant:8080
    prometheus => prometheus.gaggl.vagrant:9100
