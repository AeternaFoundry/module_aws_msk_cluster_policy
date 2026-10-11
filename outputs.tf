output "msk_cluster_policies_id" {
  description = "Map of id values across all msk_cluster_policies, keyed the same as var.msk_cluster_policies"
  value       = { for k, v in aws_msk_cluster_policy.msk_cluster_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "msk_cluster_policies_cluster_arn" {
  description = "Map of cluster_arn values across all msk_cluster_policies, keyed the same as var.msk_cluster_policies"
  value       = { for k, v in aws_msk_cluster_policy.msk_cluster_policies : k => v.cluster_arn if v.cluster_arn != null && length(v.cluster_arn) > 0 }
}
output "msk_cluster_policies_current_version" {
  description = "Map of current_version values across all msk_cluster_policies, keyed the same as var.msk_cluster_policies"
  value       = { for k, v in aws_msk_cluster_policy.msk_cluster_policies : k => v.current_version if v.current_version != null && length(v.current_version) > 0 }
}
output "msk_cluster_policies_policy" {
  description = "Map of policy values across all msk_cluster_policies, keyed the same as var.msk_cluster_policies"
  value       = { for k, v in aws_msk_cluster_policy.msk_cluster_policies : k => v.policy if v.policy != null && length(v.policy) > 0 }
}
output "msk_cluster_policies_region" {
  description = "Map of region values across all msk_cluster_policies, keyed the same as var.msk_cluster_policies"
  value       = { for k, v in aws_msk_cluster_policy.msk_cluster_policies : k => v.region if v.region != null && length(v.region) > 0 }
}

