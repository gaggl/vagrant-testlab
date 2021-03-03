#  vagrant-testlab

A vagrant setup that create a working nomad cluster and observability stack.

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

## Inspec tests

    bundle exec rake
    bundle exec rake inspec[mgmt] 

## (G)UI interfaces

    consul   => http://consul.gaggl.vagrant:8500
    nomad    => http://nomad.gaggl.vagrant:4646
    vault    => http://vault.gaggl.vagrant:8200

    alertmanager => alerts.gaggl.vagrant
    grafana      => grafana.gaggl.vagrant admin:secret
    loki         => logs.gaggl.vagrant
    prometheus   => metrics.gaggl.vagrant
    tempo        => tracing.gaggl.vagrant
