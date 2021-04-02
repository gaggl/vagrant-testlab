provider "nomad" {
  address = "http://nomad.gaggl.vagrant:4646"
}

resource "nomad_namespace" "gaggl" {
  name        = "gaggl"
  description = "Gamemaster Services"
}

resource "nomad_job" "gaggl" {
  jobspec = file(abspath("${path.module}/../fixtures/nomad/gaggl.nomad"))
  purge_on_destroy = true

  hcl2 {
    enabled = true
  }
}

resource "nomad_namespace" "mgmt" {
  name        = "mgmt"
  description = "Shared Services"
}

resource "nomad_job" "metrics" {
  jobspec = file(abspath("${path.module}/../fixtures/nomad/metrics.nomad"))
  purge_on_destroy = true

  hcl2 {
    enabled = true
  }
}

resource "nomad_job" "logs" {
  jobspec = file(abspath("${path.module}/../fixtures/nomad/logs.nomad"))
  purge_on_destroy = true

  hcl2 {
    enabled = true
  }
}

resource "nomad_job" "traces" {
  jobspec = file(abspath("${path.module}/../fixtures/nomad/traces.nomad"))
  purge_on_destroy = true

  hcl2 {
    enabled = true
  }
}

resource "nomad_job" "scaling" {
  jobspec = file(abspath("${path.module}/../fixtures/nomad/scaling.nomad"))
  purge_on_destroy = true

  hcl2 {
    enabled = true
  }
}

resource "nomad_job" "ingress" {
  jobspec = file(abspath("${path.module}/../fixtures/nomad/ingress.nomad"))
  purge_on_destroy = true

  hcl2 {
    enabled = true
  }
}

resource "nomad_namespace" "platform" {
  name        = "platform"
  description = "Application Platform Services"
}

resource "nomad_job" "platform" {
  jobspec = file(abspath("${path.module}/../fixtures/nomad/platform.nomad"))
  purge_on_destroy = true

  hcl2 {
    enabled = true
  }
}

resource "nomad_namespace" "shared" {
  name        = "shared"
  description = "Shared Services"
}

resource "nomad_job" "dashboard" {
  jobspec = file(abspath("${path.module}/../fixtures/nomad/dashboard.nomad"))
  purge_on_destroy = true

  hcl2 {
    enabled = true
  }
}

