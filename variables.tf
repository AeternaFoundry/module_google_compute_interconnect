variable "compute_interconnects" {
  description = <<EOT
Map of compute_interconnects, attributes below
Required:
    - interconnect_type
    - link_type
    - location
    - name
    - requested_link_count
Optional:
    - admin_enabled
    - customer_name
    - deletion_policy
    - description
    - labels
    - macsec_enabled
    - noc_contact_email
    - project
    - remote_location
    - requested_features
    - macsec (block):
        - fail_open (optional)
        - pre_shared_keys (required, block):
            - fail_open (optional)
            - name (required)
            - start_time (optional)
    - params (block):
        - resource_manager_tags (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    interconnect_type    = string
    link_type            = string
    location             = string
    name                 = string
    requested_link_count = number
    admin_enabled        = optional(bool)
    customer_name        = optional(string)
    deletion_policy      = optional(string)
    description          = optional(string)
    labels               = optional(map(string))
    macsec_enabled       = optional(bool)
    noc_contact_email    = optional(string)
    project              = optional(string)
    remote_location      = optional(string)
    requested_features   = optional(list(string))
    macsec = optional(object({
      fail_open = optional(bool)
      pre_shared_keys = list(object({
        fail_open  = optional(bool)
        name       = string
        start_time = optional(string)
      }))
    }))
    params = optional(object({
      resource_manager_tags = optional(map(string))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.compute_interconnects : (
        v.macsec == null || (length(v.macsec.pre_shared_keys) >= 1)
      )
    ])
    error_message = "Each pre_shared_keys list must contain at least 1 items"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

