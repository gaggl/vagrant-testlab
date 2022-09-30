terraform {
  required_version = "~> 1.2"

  required_providers {
    nomad = {
      source = "hashicorp/nomad"
      version = "1.4.18"
    }
  }
}