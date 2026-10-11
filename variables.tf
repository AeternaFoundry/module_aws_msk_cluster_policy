variable "msk_cluster_policies" {
  description = <<EOT
Map of msk_cluster_policies, attributes below
Required:
    - cluster_arn
    - policy
Optional:
    - region
EOT

  type = map(object({
    cluster_arn = string
    policy      = string
    region      = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

