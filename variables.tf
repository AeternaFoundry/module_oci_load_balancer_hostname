variable "load_balancer_hostnames" {
  description = <<EOT
Map of load_balancer_hostnames, attributes below
Required:
    - hostname
    - load_balancer_id
    - name
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    hostname         = string
    load_balancer_id = string
    name             = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

