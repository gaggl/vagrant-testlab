export NOMAD_ADDR=http://nomad.gaggl.vagrant:4646
nomad-pack run traefik -f fixtures/pack/traefik.hcl
nomad-pack run nomad_autoscaler -f fixtures/pack/autoscaler.hcl
