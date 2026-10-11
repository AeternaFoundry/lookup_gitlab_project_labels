output "project_labels_lookup_id" {
  description = "Map of id values across all project_labels_lookup, keyed the same as var.project_labels_lookup except keys with no id are omitted"
  value       = { for k, v in data.gitlab_project_labels.project_labels_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_labels_lookup_labels" {
  description = "Map of labels values across all project_labels_lookup, keyed the same as var.project_labels_lookup except keys with no labels are omitted"
  value       = { for k, v in data.gitlab_project_labels.project_labels_lookup : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "project_labels_lookup_project" {
  description = "Map of project values across all project_labels_lookup, keyed the same as var.project_labels_lookup except keys with no project are omitted"
  value       = { for k, v in data.gitlab_project_labels.project_labels_lookup : k => v.project if v.project != null && length(v.project) > 0 }
}

