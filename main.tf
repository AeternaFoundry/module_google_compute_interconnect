resource "google_compute_interconnect" "compute_interconnects" {
  for_each = var.compute_interconnects

  interconnect_type    = each.value.interconnect_type
  link_type            = each.value.link_type
  location             = each.value.location
  name                 = each.value.name
  requested_link_count = each.value.requested_link_count
  admin_enabled        = each.value.admin_enabled
  customer_name        = each.value.customer_name
  deletion_policy      = each.value.deletion_policy
  description          = each.value.description
  labels               = each.value.labels
  macsec_enabled       = each.value.macsec_enabled
  noc_contact_email    = each.value.noc_contact_email
  project              = each.value.project
  remote_location      = each.value.remote_location
  requested_features   = each.value.requested_features

  dynamic "macsec" {
    for_each = each.value.macsec != null ? [each.value.macsec] : []
    content {
      fail_open = macsec.value.fail_open
      dynamic "pre_shared_keys" {
        for_each = macsec.value.pre_shared_keys
        content {
          fail_open  = pre_shared_keys.value.fail_open
          name       = pre_shared_keys.value.name
          start_time = pre_shared_keys.value.start_time
        }
      }
    }
  }

  dynamic "params" {
    for_each = each.value.params != null ? [each.value.params] : []
    content {
      resource_manager_tags = params.value.resource_manager_tags
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

