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
    (cd terraform; terraform init; terraform apply -auto-approve)

## Inspec tests

    bundle exec rake
    bundle exec rake inspec[mgmt] 

## (G)UI interfaces

    consul       => consul.gaggl.vagrant consul.gaggl.vagrant:8500
    nomad        => nomad.gaggl.vagrant nomad.gaggl.vagrant:4646
    vault        => vault.gaggl.vagrant vault.gaggl.vagrant:8200

    alertmanager => alerts.gaggl.vagrant
    grafana      => grafana.gaggl.vagrant admin:secret
    mailhog      => mail.gaggl.vagrant
    prometheus   => metrics.gaggl.vagrant
    statping     => status.gaggl.vagrant admin:secret
    traefik      => ingress.gaggl.vagrant ingress.gaggl.vagrant:8080
    
    gaggl        => gamemaster.gaggl.vagrant
    platform     => webapp.gaggl.vagrant
