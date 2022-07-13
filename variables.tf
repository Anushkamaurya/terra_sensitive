variable "project_id" {
  description = "GCP project"
  type        = string
} 

variable "billing_account" {
  description = "The ID of the billing account to associate this project with"
  type        = string
} 

variable "project_services" {
  description = "A list of Google APIs to activate on this project"
  default     = []
  type        = list(string)
}

/* variable "org_id" {
  description = "The organization ID."
  type        = string
} */

/* variable "activate_apis" {
  description = "The list of apis to activate within the project"
  type        = list(string)
  default     = ["compute.googleapis.com"]
} */

/* variable "activate_api_identities" {
  description = "The list of service identities (Google Managed service account for the API) to force-create for the project (e.g. in order to grant additional roles). APIs in this list will automatically be appended to `activate_apis`. Not including the API in this list will follow the default behaviour for identity creation (which is usually when the first resource using the API is created).Any roles (e.g. service agent role) must be explicitly listed."
  type = list(object({
    api   = string
    roles = list(string)
  }))
  default = []
} */

/* variable "labels" {
  description = "Map of labels for project"
  type        = map(string)
  default     = {}
} */

variable "disable_services_on_destroy" {
  description = "Whether project services will be disabled when the resources are destroyed"
  default     = true
  type        = bool
} 

variable "disable_dependent_services" {
  description = "Whether services that are enabled and which depend on this service should also be disabled when this service is destroyed."
  default     = true
  type        = bool
} 

/* variable "create_project_sa" {
  description = "Whether the default service account for the project shall be created"
  type        = bool
  default     = true
} */

/* variable "project_sa_name" {
  description = "Default service account name for the project."
  type        = string
  default     = "project-service-account"
} */

variable "project_name" {
  description = "The name for the project"
  type        = string
}

variable "bucket_name" {
  description = "A name for a GCS bucket for testing"
  type        = string
  default     = ""
}

variable "bucket_location" {
  description = "The location for a GCS bucket to create"
  type        = string
  default     = ""
}

variable "bucket_force_destroy" {
  description = "Force the deletion of all objects within the GCS bucket when deleting the bucket"
  type        = bool
  default     = false
}

variable "region" {
  description = "bucket region"
  type        = string
}
