datacenters = [
  "lab",
]
autoscaler_agent_task = {
  driver               = "docker",
  version              = "0.3.7",
  additional_cli_args  = ["-nomad-address=http://$${attr.unique.network.ip-address}:4646", "-http-bind-address=0.0.0.0"],
  config_files         = [],
  scaling_policy_files = []
}