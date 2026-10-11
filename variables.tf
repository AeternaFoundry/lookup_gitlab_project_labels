variable "project_labels_lookup" {
  description = <<EOT
Map of project_labels_lookup, attributes below
Required:
    - project
EOT

  type = map(object({
    project = string
  }))
}

