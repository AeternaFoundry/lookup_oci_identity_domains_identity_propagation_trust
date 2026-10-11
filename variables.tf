variable "identity_domains_identity_propagation_trust_lookup" {
  description = <<EOT
Map of identity_domains_identity_propagation_trust_lookup, attributes below
Required:
    - idcs_endpoint
    - identity_propagation_trust_id
Optional:
    - attribute_sets
    - attributes
    - authorization
    - resource_type_schema_version
EOT

  type = map(object({
    idcs_endpoint                 = string
    identity_propagation_trust_id = string
    attribute_sets                = optional(list(string))
    attributes                    = optional(string)
    authorization                 = optional(string)
    resource_type_schema_version  = optional(string)
  }))
}

