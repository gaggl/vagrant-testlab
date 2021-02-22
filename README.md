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

    consul   => http://consul.gaggl.vagrant:8500
    foreman  => https://foreman.gaggl.vagrant admin:secret
    nomad    => http://nomad.gaggl.vagrant:4646
    traefik  => http://traefik.gaggl.vagrant:8080
    vault    => http://vault.gaggl.vagrant:8200

    alertmanager => alerts.gaggl.vagrant
    grafana      => grafana.gaggl.vagrant admin:secret
    loki         => logs.gaggl.vagrant
    prometheus   => metrics.gaggl.vagrant
    tempo        => tracing.gaggl.vagrant
