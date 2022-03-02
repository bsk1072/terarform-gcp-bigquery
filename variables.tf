variable "project_id" {
  description = "Project where the dataset and table are created."
}

variable "delete_contents_on_destroy" {
  description = "(Optional) If set to true, delete all the tables in the dataset when destroying the resource; otherwise, destroying the resource will fail if tables are present."
  type        = bool
  default     = null
}

variable "dataset_id" {
  description = "dataset id for bigquery table"
  default     = "test-dataset-id"
}

variable "dataset_name" {
  description = "dataset name for bigquery table"
  default     = "test-dataset-name"
}

variable "description" {
  description = "description for bigquery table"
  default     = "this is a test dataset for bigquery, mostly empty"
}

variable "location" {
  description = "location to host big query dataset"
  default     = "US"
}

variable "table_id" {
  description = "id for the table to be created"
  default     = "test-table"
}

variable "env" {
  description = "env like test, uat, prod"
  default     = "test"
}

variable "billable" {
  description = "(Optional) If set to true, billable to set to true"
  type        = bool
  default     = "true"
}

variable "owner" {
  description = "owner for the table and dataset"
  default     = "myowner"
}
