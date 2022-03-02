module "bigquery" {
  source                     = "./modules/big_query"
  dataset_id                 = var.dataset_id
  dataset_name               = var.dataset_name
  description                = var.description
  project_id                 = var.project_id
  location                   = var.location
  delete_contents_on_destroy = var.delete_contents_on_destroy
  tables = [
    {
      table_id           = var.table_id,
      schema             = file("test-schema.json"),
      time_partitioning  = null,
      range_partitioning = null,
      expiration_time    = 2524604400000, # 2050/01/01
      clustering         = [],
      labels = {
        env      = var.env
        billable = var.billable
        owner    = var.owner
      },
    }
  ]
  dataset_labels = {
    env      = var.env
    billable = var.billable
    owner    = var.owner
  }
}
