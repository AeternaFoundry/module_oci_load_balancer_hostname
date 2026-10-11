output "load_balancer_hostnames_id" {
  description = "Map of id values across all load_balancer_hostnames, keyed the same as var.load_balancer_hostnames except keys with no id are omitted"
  value       = { for k, v in oci_load_balancer_hostname.load_balancer_hostnames : k => v.id if v.id != null && length(v.id) > 0 }
}
output "load_balancer_hostnames_hostname" {
  description = "Map of hostname values across all load_balancer_hostnames, keyed the same as var.load_balancer_hostnames except keys with no hostname are omitted"
  value       = { for k, v in oci_load_balancer_hostname.load_balancer_hostnames : k => v.hostname if v.hostname != null && length(v.hostname) > 0 }
}
output "load_balancer_hostnames_load_balancer_id" {
  description = "Map of load_balancer_id values across all load_balancer_hostnames, keyed the same as var.load_balancer_hostnames except keys with no load_balancer_id are omitted"
  value       = { for k, v in oci_load_balancer_hostname.load_balancer_hostnames : k => v.load_balancer_id if v.load_balancer_id != null && length(v.load_balancer_id) > 0 }
}
output "load_balancer_hostnames_name" {
  description = "Map of name values across all load_balancer_hostnames, keyed the same as var.load_balancer_hostnames except keys with no name are omitted"
  value       = { for k, v in oci_load_balancer_hostname.load_balancer_hostnames : k => v.name if v.name != null && length(v.name) > 0 }
}
output "load_balancer_hostnames_state" {
  description = "Map of state values across all load_balancer_hostnames, keyed the same as var.load_balancer_hostnames except keys with no state are omitted"
  value       = { for k, v in oci_load_balancer_hostname.load_balancer_hostnames : k => v.state if v.state != null && length(v.state) > 0 }
}

