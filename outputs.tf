output "compute_interconnects_id" {
  description = "Map of id values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no id are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_interconnects_admin_enabled" {
  description = "Map of admin_enabled values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no admin_enabled are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.admin_enabled if v.admin_enabled != null }
}
output "compute_interconnects_available_features" {
  description = "Map of available_features values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no available_features are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.available_features if v.available_features != null && length(v.available_features) > 0 }
}
output "compute_interconnects_circuit_infos" {
  description = "Map of circuit_infos values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no circuit_infos are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.circuit_infos if v.circuit_infos != null && length(v.circuit_infos) > 0 }
}
output "compute_interconnects_creation_timestamp" {
  description = "Map of creation_timestamp values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no creation_timestamp are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.creation_timestamp if v.creation_timestamp != null && length(v.creation_timestamp) > 0 }
}
output "compute_interconnects_customer_name" {
  description = "Map of customer_name values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no customer_name are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.customer_name if v.customer_name != null && length(v.customer_name) > 0 }
}
output "compute_interconnects_deletion_policy" {
  description = "Map of deletion_policy values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_interconnects_description" {
  description = "Map of description values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no description are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.description if v.description != null && length(v.description) > 0 }
}
output "compute_interconnects_effective_labels" {
  description = "Map of effective_labels values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no effective_labels are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "compute_interconnects_effective_location" {
  description = "Map of effective_location values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no effective_location are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.effective_location if v.effective_location != null && length(v.effective_location) > 0 }
}
output "compute_interconnects_expected_outages" {
  description = "Map of expected_outages values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no expected_outages are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.expected_outages if v.expected_outages != null && length(v.expected_outages) > 0 }
}
output "compute_interconnects_google_ip_address" {
  description = "Map of google_ip_address values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no google_ip_address are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.google_ip_address if v.google_ip_address != null && length(v.google_ip_address) > 0 }
}
output "compute_interconnects_google_reference_id" {
  description = "Map of google_reference_id values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no google_reference_id are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.google_reference_id if v.google_reference_id != null && length(v.google_reference_id) > 0 }
}
output "compute_interconnects_interconnect_attachments" {
  description = "Map of interconnect_attachments values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no interconnect_attachments are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.interconnect_attachments if v.interconnect_attachments != null && length(v.interconnect_attachments) > 0 }
}
output "compute_interconnects_interconnect_groups" {
  description = "Map of interconnect_groups values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no interconnect_groups are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.interconnect_groups if v.interconnect_groups != null && length(v.interconnect_groups) > 0 }
}
output "compute_interconnects_interconnect_type" {
  description = "Map of interconnect_type values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no interconnect_type are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.interconnect_type if v.interconnect_type != null && length(v.interconnect_type) > 0 }
}
output "compute_interconnects_label_fingerprint" {
  description = "Map of label_fingerprint values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no label_fingerprint are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.label_fingerprint if v.label_fingerprint != null && length(v.label_fingerprint) > 0 }
}
output "compute_interconnects_labels" {
  description = "Map of labels values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no labels are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "compute_interconnects_link_type" {
  description = "Map of link_type values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no link_type are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.link_type if v.link_type != null && length(v.link_type) > 0 }
}
output "compute_interconnects_location" {
  description = "Map of location values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no location are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.location if v.location != null && length(v.location) > 0 }
}
output "compute_interconnects_macsec" {
  description = "Map of macsec values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no macsec are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => one(v.macsec) if v.macsec != null && length(v.macsec) > 0 }
}
output "compute_interconnects_macsec_enabled" {
  description = "Map of macsec_enabled values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no macsec_enabled are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.macsec_enabled if v.macsec_enabled != null }
}
output "compute_interconnects_name" {
  description = "Map of name values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no name are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_interconnects_noc_contact_email" {
  description = "Map of noc_contact_email values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no noc_contact_email are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.noc_contact_email if v.noc_contact_email != null && length(v.noc_contact_email) > 0 }
}
output "compute_interconnects_operational_status" {
  description = "Map of operational_status values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no operational_status are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.operational_status if v.operational_status != null && length(v.operational_status) > 0 }
}
output "compute_interconnects_params" {
  description = "Map of params values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no params are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => one(v.params) if v.params != null && length(v.params) > 0 }
}
output "compute_interconnects_peer_ip_address" {
  description = "Map of peer_ip_address values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no peer_ip_address are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.peer_ip_address if v.peer_ip_address != null && length(v.peer_ip_address) > 0 }
}
output "compute_interconnects_project" {
  description = "Map of project values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no project are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_interconnects_provisioned_link_count" {
  description = "Map of provisioned_link_count values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no provisioned_link_count are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.provisioned_link_count if v.provisioned_link_count != null }
}
output "compute_interconnects_remote_location" {
  description = "Map of remote_location values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no remote_location are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.remote_location if v.remote_location != null && length(v.remote_location) > 0 }
}
output "compute_interconnects_requested_features" {
  description = "Map of requested_features values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no requested_features are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.requested_features if v.requested_features != null && length(v.requested_features) > 0 }
}
output "compute_interconnects_requested_link_count" {
  description = "Map of requested_link_count values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no requested_link_count are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.requested_link_count if v.requested_link_count != null }
}
output "compute_interconnects_satisfies_pzs" {
  description = "Map of satisfies_pzs values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no satisfies_pzs are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.satisfies_pzs if v.satisfies_pzs != null }
}
output "compute_interconnects_state" {
  description = "Map of state values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no state are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.state if v.state != null && length(v.state) > 0 }
}
output "compute_interconnects_terraform_labels" {
  description = "Map of terraform_labels values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no terraform_labels are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "compute_interconnects_wire_groups" {
  description = "Map of wire_groups values across all compute_interconnects, keyed the same as var.compute_interconnects except keys with no wire_groups are omitted"
  value       = { for k, v in google_compute_interconnect.compute_interconnects : k => v.wire_groups if v.wire_groups != null && length(v.wire_groups) > 0 }
}

