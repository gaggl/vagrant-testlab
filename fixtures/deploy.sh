export NOMAD_ADDR=http://nomad.gaggl.vagrant:4646
nomad-pack run traefik -f pack/traefik.hcl
nomad-pack run nomad_autoscaler -f pack/autoscaler.hcl
