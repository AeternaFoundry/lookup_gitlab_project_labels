data "gitlab_project_labels" "project_labels_lookup" {
  for_each = var.project_labels_lookup

  project = each.value.project
}

