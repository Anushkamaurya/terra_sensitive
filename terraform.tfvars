project_id = "gke-practice-1-334009"
region  =   "europe-west2"
project_name    =       "gke practice 1"
bucket_name = "pot1_bucket" 
bucket_location = "europe-west2"
bucket_force_destroy    =       true
// project_sa_name = ""
billing_account = "My Billing Account"
project_services  =       [
        "storage.googleapis.com",
        "cloudresourcemanager.googleapis.com",
        "compute.googleapis.com",
        "iam.googleapis.com",
        "serviceusage.googleapis.com",
        "storage-component.googleapis.com",
        "cloudbilling.googleapis.com"
      ] 
