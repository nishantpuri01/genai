resource "google_service_account_iam_member" "sa-dp-de-default-compute-user-dev" {
  for_each = toset([
    "serviceAccount:service-205256888665@gcp-sa-datafusion.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-de-cicd-dev@aeo-data-engineering-dev.iam.gserviceaccount.com",
    "group:gcp-datametica-core-dev@ae.com",
    "group:gcp-bbi-dataops-pwr@ae.com",
  ])

  service_account_id = "projects/aeo-data-engineering-dev/serviceAccounts/205256888665-compute@developer.gserviceaccount.com"
  role               = "roles/iam.serviceAccountUser"
  member             = each.key
}

resource "google_service_account_iam_member" "ae-dp-de-shoprunner-dev" {
  for_each = toset([
    "group:gcp-dataeng-coreteam-pwrusr@ae.com",
  ])

  service_account_id = module.ae-dp-de-shoprunner-dev.service_account.name
  role               = "roles/iam.serviceAccountUser"
  member             = each.key
}

resource "google_service_account_iam_member" "ae-dp-de-cicd-dev" {
  for_each = toset([
    "serviceAccount:ae-dp-de-cicd-dev@aeo-data-engineering-dev.iam.gserviceaccount.com",
    "group:gcp-datametica-core-dev@ae.com",
    "group:gcp-bbi-dataops-pwr@ae.com",
    "serviceAccount:205256888665-compute@developer.gserviceaccount.com"
  ])

  service_account_id = "projects/aeo-data-engineering-dev/serviceAccounts/aeo-data-engineering-dev@appspot.gserviceaccount.com"
  role               = "roles/iam.serviceAccountUser"
  member             = each.key
}

resource "google_service_account_iam_member" "ae-dp-de-dfcde-dev" {
  for_each = toset([
    "group:gcp-dataeng-customer-dev@ae.com",
  ])

  service_account_id = "projects/aeo-data-engineering-dev/serviceAccounts/ae-dp-de-dfcde-dev@aeo-data-engineering-dev.iam.gserviceaccount.com"
  role               = "roles/iam.serviceAccountUser"
  member             = each.key
}

resource "google_service_account_iam_member" "ae-dp-de-dmz2de-opex-dev" {
  for_each = toset([
    "group:gcp-dataeng-coreteam-dev@ae.com",
  ])

  service_account_id = "projects/aeo-data-engineering-dev/serviceAccounts/ae-dp-de-dmz2de-opex-dev@aeo-data-engineering-dev.iam.gserviceaccount.com"
  role               = "roles/iam.serviceAccountUser"
  member             = each.key
}
