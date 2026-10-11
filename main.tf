resource "oci_load_balancer_hostname" "load_balancer_hostnames" {
  for_each = var.load_balancer_hostnames

  hostname         = each.value.hostname
  load_balancer_id = each.value.load_balancer_id
  name             = each.value.name

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

