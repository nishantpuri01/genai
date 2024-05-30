resource "google_project_iam_member" "sa-dp-de-kms-dev" {
  for_each = toset([
    "serviceAccount:service-205256888665@compute-system.iam.gserviceaccount.com",
    "serviceAccount:service-205256888665@gs-project-accounts.iam.gserviceaccount.com",
    "serviceAccount:bq-205256888665@bigquery-encryption.iam.gserviceaccount.com",
    "serviceAccount:service-205256888665@gcp-sa-pubsub.iam.gserviceaccount.com"
  ])
  project = var.project
  role    = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
  member  = each.key
}

resource "google_project_iam_member" "gcp-supplychain-datasci-dev" {
  for_each = toset([
    "group:gcp-supplychain-datasci-dev@ae.com",
    "group:gcp-bbi-core-dev@ae.com",
    "group:gcp-tredence-analytics-dev@ae.com",
    "group:gcp-tredence-orchestration-dev@ae.com",
    "serviceAccount:dag-trigger@aeo-data-engineering-dev.iam.gserviceaccount.com",
    "group:gcp-cust360-core-dev@ae.com",
    "group:gcp-tredence-mlops-dev@ae.com",
    "group:gcp-datasci-core-dev@ae.com",
    "group:gcp-supplychain-srmtech-dev@ae.com",
	  "group:gcp-assoc-entsvc-dev@ae.com",
    "group:gcp-supplychain-srmtech-dev@ae.com",
    "serviceAccount:ae-dp-di-cicd-dev@aeo-datains-reporting-dev.iam.gserviceaccount.com",
    "serviceAccount:talp-store-backend-dev@aeo-gke-internal-nonprod-4379.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-ds-talpstore-preprd@aeo-datasci-common-preprod.iam.gserviceaccount.com",
    "serviceAccount:tlpstr-pp@aeo-datasci-common-preprod.iam.gserviceaccount.com",
    "serviceAccount:talp-store-backend-sit@aeo-gke-internal-nonprod-4379.iam.gserviceaccount.com",
    "serviceAccount:tlpstr-dev@aeo-gke-internal-nonprod-4379.iam.gserviceaccount.com",
    "serviceAccount:tlpstr-sit@aeo-gke-internal-nonprod-4379.iam.gserviceaccount.com",
    "serviceAccount:ctrlmgcp-dev@aeo-data-engineering-dev.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-de-pss-cicd-dev@aeo-data-engineering-dev.iam.gserviceaccount.com",
    "serviceAccount:aeo-hr-orgplus-prod@aeo-hr-datamart-prod.iam.gserviceaccount.com",
    "serviceAccount:genabs-dev@aeo-gke-internal-nonprod-4379.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-mpa-cf-trigger-dev@aeo-mpa-datamart-develop.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-mpa-cicd-dev@aeo-mpa-datamart-develop.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-mpa-ctrlm-np@aeo-mpa-datamart-develop.iam.gserviceaccount.com",
  ])
  project = var.project
  role    = "roles/composer.user"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-cloud-functions-developer-dev" {
  for_each = toset([
    "serviceAccount:test-automation-project-owner@aeo-data-engineering-dev.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-de-test-dev@aeo-data-engineering-dev.iam.gserviceaccount.com",
    "group:gcp-dataeng-coreteam-dev@ae.com",
    "group:gcp-datametica-core-pwr@ae.com",
    "group:gcp-bbi-pipelinesupport-pwr@ae.com",
    "group:gcp-dataeng-customer-dev@ae.com",
    "group:gcp-cust360-core-dev@ae.com",
  ])
  project = var.project
  role    = "roles/cloudfunctions.developer"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-logging-viewer-dev" {
  for_each = toset([
    "serviceAccount:test-automation-project-owner@aeo-data-engineering-dev.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-de-test-dev@aeo-data-engineering-dev.iam.gserviceaccount.com",
    "group:gcp-bbi-core-dev@ae.com",
    "group:gcp-dataeng-coreteam-dev@ae.com",
    "group:gcp-datametica-core-pwr@ae.com",
    "group:gcp-datametica-core-dev@ae.com",
    "group:gcp-tredence-orchestration-dev@ae.com",
  ])
  project = var.project
  role    = "roles/logging.viewer"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-bq-viewer-dev" {
  for_each = toset([
    "serviceAccount:ae-dp-di-cognos-dev@aeo-datains-reporting-dev.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-ds-dataproc-dev@aeo-datasci-common-dev.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-sci-composer-sa-prod@aeo-datasci-common-prod.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-sci-composer-sa-dev@aeo-datasci-common-dev.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-ds-jupyter-dev@aeo-datasci-common-dev.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-dg-bigid-sa-prod@aeo-datagov-bigid-prod.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-de-dataplex-nonprod@aeo-data-plex-nonprod.iam.gserviceaccount.com",
    "group:gcp-tredence-analytics-dev@ae.com",
    "group:gcp-mpa-core-dev@ae.com",
    "group:gcp-bbi-core-dev@ae.com",
    "group:gcp-cust360-core-dev@ae.com",
    "group:gcp-bbi-pipelinesupport-pwr@ae.com",
    "group:gcp-tredence-mlops-dev@ae.com",
    "group:gcp-tredence-orchestration-dev@ae.com",
    "group:gcp-tredence-productmetrics-dev@ae.com",
    "serviceAccount:ae-dp-de-looker-poc-prod@aeo-data-engineering-prod.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-de-composer-sa-dev@aeo-data-engineering-dev.iam.gserviceaccount.com",
    "group:gcp-assoc-mpasupport-dev@ae.com",
    "serviceAccount:tlpstr-dev@aeo-gke-internal-nonprod-4379.iam.gserviceaccount.com",
    "serviceAccount:tlpstr-sit@aeo-gke-internal-nonprod-4379.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-de-dataproc-sa-dev@aeo-data-engineering-dev.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-cust-cicd-dev@aeo-custgnm-datamart-dev.iam.gserviceaccount.com",
  ])
  project = var.project
  role    = "roles/bigquery.dataViewer"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-bq-user-dev" {
  for_each = toset([
    "serviceAccount:ae-dp-di-cognos-dev@aeo-datains-reporting-dev.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-de-dataplex-nonprod@aeo-data-plex-nonprod.iam.gserviceaccount.com",
    "group:gcp-tredence-orchestration-dev@ae.com",
    "group:gcp-omnichannel-analyticsmx-view@ae.com"
  ])
  project = var.project
  role    = "roles/bigquery.user"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-bq-metadataviewer-dev" {
  for_each = toset([
    "group:gcp-datagov-core-pwr@ae.com",
    "serviceAccount:ae-dp-dg-bigid-sa-prod@aeo-datagov-bigid-prod.iam.gserviceaccount.com",
    "group:gcp-assoc-mpasupport-dev@ae.com",
    "group:gcp-datasci-core-dev@ae.com",
    "group:gcp-tredence-demand-forecasting-dev@ae.com",
    "serviceAccount:ae-dp-de-composer-sa-prod@aeo-data-engineering-prod.iam.gserviceaccount.com"
  ])
  project = var.project
  role    = "roles/bigquery.metadataViewer"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-bq-readSessionUser-dev" {
  for_each = toset([
    "group:gcp-datametica-core-dev@ae.com",
    "serviceAccount:ae-dp-de-composer-sa-dev@aeo-data-engineering-dev.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-de-dataproc-sa-dev@aeo-data-engineering-dev.iam.gserviceaccount.com",
  ])
  project = var.project
  role    = "roles/bigquery.readSessionUser"
  member  = each.key
}

resource "google_project_iam_member" "gr-entscv-serviceUsageViewer-nonprod" {
  for_each = toset([
    "group:gcp-assoc-entsvc-dev@ae.com",
    "group:gcp-dataeng-coreteam-pwrusr@ae.com",
    "group:gcp-dataeng-coreteam-dev@ae.com",
    "group:gcp-cust360-core-dev@ae.com",
    "group:gcp-bbi-pipelinesupport-dev@ae.com",
  ])
  project = var.project
  role    = "roles/serviceusage.serviceUsageViewer"
  member  = each.key
}

resource "google_project_iam_member" "gr-cloudaicompanion-nonprod" {
  for_each = toset([
    "group:gcp-dataeng-coreteam-pwrusr@ae.com",
    "group:gcp-dataeng-coreteam-dev@ae.com",
    "group:gcp-cust360-core-dev@ae.com",
    "group:gcp-bbi-pipelinesupport-dev@ae.com",
  ])
  project = var.project
  role    = "roles/cloudaicompanion.user"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-bq-admin-dev" {
  for_each = toset([
    "group:gcp-datametica-core-dev@ae.com",
    "group:gcp-dataeng-coreteam-dev@ae.com",
    "group:gcp-datametica-core-pwr@ae.com",
    "group:gcp-bbi-dataops-pwr@ae.com",
    "serviceAccount:ae-dp-di-cicd-dev@aeo-datains-reporting-dev.iam.gserviceaccount.com",
  ])
  project = var.project
  role    = "roles/bigquery.admin"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-storage-admin-dev" {
  for_each = toset([
    "group:gcp-datametica-core-dev@ae.com",
    "group:gcp-dataeng-coreteam-dev@ae.com",
    "group:gcp-datametica-core-pwr@ae.com",
    "group:gcp-bbi-dataops-pwr@ae.com",
    "group:gcp-mpa-core-dev@ae.com",
    "serviceAccount:cloud-datafusion-management-sa@n4b1c367ec121c73b-tp.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-de-custgnm-df-dev@aeo-data-engineering-dev.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-rd-df-cicd-test@aeo-data-foundation-test.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-rd-df-cicd-preprod@aeo-data-foundation-preprod.iam.gserviceaccount.com",
  ])
  project = var.project
  role    = "roles/storage.admin"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-composer-admin-dev" {
  for_each = toset([
    "group:gcp-datametica-core-dev@ae.com",
    "group:gcp-dataeng-coreteam-dev@ae.com",
    "group:gcp-datametica-core-pwr@ae.com",
    "group:gcp-dataeng-customer-dev@ae.com",
    "group:gcp-bbi-dataops-pwr@ae.com",
    "group:gcp-mpa-core-dev@ae.com",
    "serviceAccount:ae-dp-rd-df-cicd-test@aeo-data-foundation-test.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-rd-df-cicd-preprod@aeo-data-foundation-preprod.iam.gserviceaccount.com",
  ])
  project = var.project
  role    = "roles/composer.admin"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-df-admin-dev" {
  for_each = toset([
    "group:gcp-datametica-core-dev@ae.com",
    "group:gcp-dataeng-coreteam-dev@ae.com",
    "group:gcp-datametica-core-pwr@ae.com",
    "group:gcp-dataeng-customer-dev@ae.com",
    "group:gcp-bbi-dataops-pwr@ae.com",
    "group:gcp-mpa-core-dev@ae.com",
    "group:gcp-bbi-pipelinesupport-pwr@ae.com",
    "serviceAccount:aeo-dataeng-terraform-np@aeo-dataeng-terraform-ff26.iam.gserviceaccount.com",
    "serviceAccount:aeo-assoc-gis-datafusion@aeo-assoc-common-nonprod.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-de-pss-cicd-dev@aeo-data-engineering-dev.iam.gserviceaccount.com",

  ])
  project = var.project
  role    = "roles/datafusion.admin"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-monitoring-viewer-dev" {
  for_each = toset([
    "group:gcp-datametica-core-dev@ae.com",
    "group:gcp-dataeng-coreteam-dev@ae.com",
    "group:gcp-datametica-core-pwr@ae.com"
  ])
  project = var.project
  role    = "roles/monitoring.viewer"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-dataflow-developer-dev" {
  for_each = toset([
    "group:gcp-datametica-core-dev@ae.com",
    "group:gcp-dataeng-coreteam-dev@ae.com",
    "group:gcp-datametica-core-pwr@ae.com",
    "group:gcp-dataeng-customer-dev@ae.com",
    "group:gcp-bbi-dataops-pwr@ae.com",
    "group:gcp-bbi-pipelinesupport-pwr@ae.com",
    "serviceAccount:ae-dp-de-ccp-cta-nonprod@aeo-data-engineering-dev.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-de-composer-sa-dev@aeo-data-engineering-dev.iam.gserviceaccount.com",
  ])
  project = var.project
  role    = "roles/dataflow.developer"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-dataproc-viewer-dev" {
  for_each = toset([
    "group:gcp-datametica-core-dev@ae.com",
    "group:gcp-dataeng-coreteam-dev@ae.com",
    "group:gcp-datametica-core-pwr@ae.com",
    "group:gcp-dataeng-customer-dev@ae.com",
    "group:gcp-bbi-pipelinesupport-pwr@ae.com",
  ])
  project = var.project
  role    = "roles/dataproc.viewer"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-dataproc-admin-dev" {
  for_each = toset([
    "group:gcp-bbi-dataops-pwr@ae.com",
  ])
  project = var.project
  role    = "roles/dataproc.admin"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-cloudfunctions-admin-dev" {
  for_each = toset([
    "group:gcp-datametica-core-dev@ae.com",
    "group:gcp-dataeng-coreteam-dev@ae.com",
    "group:gcp-datametica-core-pwr@ae.com",
    "group:gcp-dataeng-customer-dev@ae.com",
    "group:gcp-bbi-dataops-pwr@ae.com",
  ])
  project = var.project
  role    = "roles/cloudfunctions.admin"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-storage-objectViewer-dev" {
  for_each = toset([
  "serviceAccount:ae-dp-de-dataplex-nonprod@aeo-data-plex-nonprod.iam.gserviceaccount.com",
  "group:gcp-assoc-mpasupport-dev@ae.com",
  "group:gcp-bbi-pipelinesupport-pwr@ae.com",
  ])
  project = var.project
  role    = "roles/storage.objectViewer"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-df-viewer-dev" {
  for_each = toset([
    "group:gcp-bbi-core-dev@ae.com",
    "group:gcp-tredence-mlops-dev@ae.com",
    "group:gcp-cust360-core-dev@ae.com",
    "group:gcp-assoc-entsvc-dev@ae.com",
    "group:gcp-outfitters-core-dev@ae.com",
    "group:gcp-assoc-store-apps-eng@ae.com"
  ])
  project = var.project
  role    = "roles/datafusion.viewer"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-cloudfunctions-viewer-dev" {
  for_each = toset([
    "group:gcp-bbi-core-dev@ae.com",
    "group:gcp-tredence-orchestration-dev@ae.com",
  ])
  project = var.project
  role    = "roles/cloudfunctions.viewer"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-pubsub-viewer-dev" {
  for_each = toset([
    "group:gcp-bbi-core-dev@ae.com",
    "group:gcp-tredence-orchestration-dev@ae.com",
    "group:gcp-datametica-core-dev@ae.com",
  ])
  project = var.project
  role    = "roles/pubsub.viewer"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-dataflow-viewer-dev" {
  for_each = toset([
    "group:gcp-bbi-core-dev@ae.com"
  ])
  project = var.project
  role    = "roles/dataflow.viewer"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-logging-writer-dev" {
  for_each = toset([
    "group:gcp-bbi-core-dev@ae.com",
    "group:gcp-bbi-pipelinesupport-pwr@ae.com",
    "group:gcp-tredence-orchestration-dev@ae.com",
    "group:gcp-datametica-core-pwr@ae.com",
  ])
  project = var.project
  role    = "roles/logging.configWriter"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-monitoring-alertPolicyEditor-dev" {
  for_each = toset([
    "group:gcp-bbi-core-dev@ae.com",
    "group:gcp-tredence-orchestration-dev@ae.com",
    "group:gcp-datametica-core-dev@ae.com",
    "group:gcp-bbi-dataops-pwr@ae.com",
  ])
  project = var.project
  role    = "roles/monitoring.alertPolicyEditor"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-monitoring-dashboardEditor-dev" {
  for_each = toset([
    "group:gcp-bbi-core-dev@ae.com",
    "group:gcp-tredence-orchestration-dev@ae.com",
  ])
  project = var.project
  role    = "roles/monitoring.dashboardEditor"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-monitoring-editor-dev" {
  for_each = toset([
    "group:gcp-bbi-core-dev@ae.com",
    "group:gcp-bbi-pipelinesupport-pwr@ae.com",
    "group:gcp-tredence-orchestration-dev@ae.com",
    "group:gcp-datametica-core-dev@ae.com",
  ])
  project = var.project
  role    = "roles/monitoring.editor"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-bq-jobUser-dev" {
  for_each = toset([
    "group:gcp-bbi-core-dev@ae.com",
    "group:gcp-tredence-analytics-dev@ae.com",
    "group:gcp-cust360-core-dev@ae.com",
    "serviceAccount:ae-dp-sci-composer-sa-dev@aeo-datasci-common-dev.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-de-ccp-cta-nonprod@aeo-data-engineering-dev.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-de-looker-poc-prod@aeo-data-engineering-prod.iam.gserviceaccount.com",
    "serviceAccount:service-205256888665@gcp-sa-dataform.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-de-dataproc-sa-dev@aeo-data-engineering-dev.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-de-custgnm-df-dev@aeo-data-engineering-dev.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-mpa-cicd-dev@aeo-mpa-datamart-develop.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-sc-guru-prod@aeo-supplychain-datamart-prod.iam.gserviceaccount.com"
  ])
  project = var.project
  role    = "roles/bigquery.jobUser"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-bucket-storageBrowser-dev" {
  for_each = toset([
    "group:gcp-bbi-core-dev@ae.com",
    "group:gcp-dataeng-customer-dev@ae.com",
    "group:gcp-tredence-mlops-dev@ae.com",
    "group:gcp-tredence-orchestration-dev@ae.com",
    "group:gcp-assoc-mpasupport-dev@ae.com",
    "group:gcp-store-upload-dev@ae.com",
    "serviceAccount:ae-dp-mpa-ctrlm-np@aeo-mpa-datamart-develop.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-sci-composer-sa-dev@aeo-datasci-common-dev.iam.gserviceaccount.com"
  ])
  project = var.project
  role    = "organizations/263964278522/roles/storageBrowser"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-gcp-tredence-analytics-dev" {
  for_each = toset([
    "group:gcp-tredence-analytics-dev@ae.com"
  ])
  project = var.project
  role    = "roles/bigquery.metadataViewer"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-gcp-tredence-datagov-dev" {
  for_each = toset([
    "group:gcp-tredence-datagov-dev@ae.com"
  ])
  project = var.project
  role    = "roles/datacatalog.admin"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-browser-dev" {
  for_each = toset([
    "group:gcp-bbi-dataops-pwr@ae.com",
    "group:gcp-supplychain-srmtech-dev@ae.com",
  ])
  project = var.project
  role    = "roles/browser"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-dataOwner-dev" {
  for_each = toset([
    "group:gcp-dataeng-customer-dev@ae.com"
  ])
  project = var.project
  role    = "roles/bigquery.dataOwner"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-objectAdminr-dev" {
  for_each = toset([
    "group:gcp-dataeng-customer-dev@ae.com",
    "serviceAccount:ae-dp-de-dataproc-sa-dev@aeo-data-engineering-dev.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-de-ctrlmgcp-dev@aeo-data-engineering-dev.iam.gserviceaccount.com",
    "serviceAccount:ctrlmgcp-dev@aeo-data-engineering-dev.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-de-pss-cicd-dev@aeo-data-engineering-dev.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-mpa-cicd-dev@aeo-mpa-datamart-develop.iam.gserviceaccount.com",
  ])
  project = var.project
  role    = "roles/storage.objectAdmin"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-pubsub-edit-dev" {
  for_each = toset([
    "group:gcp-dataeng-customer-dev@ae.com",
    "group:gcp-bbi-pipelinesupport-pwr@ae.com",
    "serviceAccount:ae-dp-de-ccp-cta-nonprod@aeo-data-engineering-dev.iam.gserviceaccount.com",
    "serviceAccount:aeo-dataeng-terraform-np@aeo-dataeng-terraform-ff26.iam.gserviceaccount.com",
    "group:gcp-cust360-core-dev@ae.com",
    "group:gcp-tredence-datagov-dev@ae.com",
  ])
  project = var.project
  role    = "roles/pubsub.editor"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-secret-admin-dev" {
  for_each = toset([
    "group:gcp-datametica-core-pwr@ae.com",
    "group:gcp-bbi-dataops-pwr@ae.com",
  ])
  project = var.project
  role    = "roles/secretmanager.admin"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-datastore-owner-dev" {
  for_each = toset([
    "group:gcp-bbi-dataops-pwr@ae.com"
  ])
  project = var.project
  role    = "roles/datastore.owner"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-secret-viewer-dev" {
  for_each = toset([
    "group:gcp-bbi-dataops-pwr@ae.com",
    "group:gcp-datametica-core-pwr@ae.com",
    "group:gcp-cust360-core-dev@ae.com",
  ])
  project = var.project
  role    = "roles/secretmanager.viewer"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-composer-environment-viewer-dev" {
  for_each = toset([
    "group:gcp-tredence-mlops-dev@ae.com",
    "serviceAccount:aeo-assoc-gis-datafusion@aeo-assoc-common-nonprod.iam.gserviceaccount.com",
  ])
  project = var.project
  role    = "roles/composer.environmentAndStorageObjectViewer"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-notebooks-admin-dev" {
  for_each = toset([
    "group:gcp-dataeng-coreteam-dev@ae.com"
  ])
  project = var.project
  role    = "roles/notebooks.admin"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-cluster-viewer-dev" {
  for_each = toset([
    "group:gcp-bbi-pipelinesupport-pwr@ae.com",
  ])
  project = var.project
  role    = "roles/container.clusterViewer"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-container-viewer-dev" {
  for_each = toset([
    "group:gcp-bbi-pipelinesupport-pwr@ae.com",
 ])
  project = var.project
  role    = "roles/container.viewer"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-datastream-admin-dev" {
  for_each = toset([
    "serviceAccount:cloud-datafusion-management-sa@n4b1c367ec121c73b-tp.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-de-dataproc-sa-dev@aeo-data-engineering-dev.iam.gserviceaccount.com",
    "group:gcp-dataeng-coreteam-dev@ae.com",
    "group:gcp-bbi-dataops-pwr@ae.com",
  ])
  project = var.project
  role    = "roles/datastream.admin"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-serviceaccount-user-dev" {
  for_each = toset([
    "group:gcp-bbi-dataops-pwr@ae.com",
    "group:gcp-dataeng-customer-dev@ae.com",
    "serviceAccount:ae-dp-de-ccp-cta-nonprod@aeo-data-engineering-dev.iam.gserviceaccount.com",
    "group:gcp-bbi-pipelinesupport-pwr@ae.com",
  ])
  project = var.project
  role    = "roles/iam.serviceAccountUser"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-dataplex-serviceagent-dev" {
  for_each = toset([
    "serviceAccount:service-442021254143@gcp-sa-dataplex.iam.gserviceaccount.com",
  ])
  project = var.project
  role    = "roles/dataplex.serviceAgent"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-bq-data-editor-dev" {
  for_each = toset([
    "group:gcp-bbi-pipelinesupport-pwr@ae.com",
    "serviceAccount:ae-dp-sci-composer-sa-dev@aeo-datasci-common-dev.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-de-ccp-cta-nonprod@aeo-data-engineering-dev.iam.gserviceaccount.com",
    "serviceAccount:service-205256888665@gcp-sa-dataform.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-de-dataproc-sa-dev@aeo-data-engineering-dev.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-mpa-cicd-dev@aeo-mpa-datamart-develop.iam.gserviceaccount.com",
  ])
  project = var.project
  role    = "roles/bigquery.dataEditor"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-datastore-user-dev" {
  for_each = toset([
    "group:gcp-bbi-pipelinesupport-pwr@ae.com",
    "group:gcp-tredence-orchestration-dev@ae.com",
    "group:gcp-dataeng-customer-dev@ae.com",
    "group:gcp-cust360-core-dev@ae.com",
    "group:gcp-datametica-core-dev@ae.com",
    "serviceAccount:ae-dp-de-dmz2de-opex-dev@aeo-data-engineering-dev.iam.gserviceaccount.com",
  ])
  project = var.project
  role    = "roles/datastore.user"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-composer-env-dev" {
  for_each = toset([
    "group:gcp-bbi-pipelinesupport-pwr@ae.com"
  ])
  project = var.project
  role    = "roles/composer.environmentAndStorageObjectAdmin"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-composer-v2ext-dev" {
  for_each = toset([
    "serviceAccount:service-205256888665@cloudcomposer-accounts.iam.gserviceaccount.com",
    "serviceAccount:service-205256888665@container-engine-robot.iam.gserviceaccount.com",
  ])
  project = var.project
  role    = "roles/composer.ServiceAgentV2Ext"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-composer-sharedvpc-dev" {
  for_each = toset([
    "serviceAccount:service-205256888665@cloudcomposer-accounts.iam.gserviceaccount.com",
  ])
  project = var.project
  role    = "roles/composer.sharedVpcAgent"
  member  = each.key
}

resource "google_project_iam_member" "ae-dp-de-dataplex-nonprod-consumer-role" {
  for_each = toset([
    "serviceAccount:ae-dp-de-dataplex-nonprod@aeo-data-plex-nonprod.iam.gserviceaccount.com",
    "group:gcp-bbi-dataops-pwr@ae.com",
  ])
  project = var.project
  role    = "roles/serviceusage.serviceUsageConsumer"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-datastore-viewer-dev" {
  for_each = toset([
    "group:gcp-tredence-orchestration-dev@ae.com",
    "group:gcp-datametica-core-dev@ae.com",
  ])
  project = var.project
  role    = "roles/datastore.viewer"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-object-admin-dev" {
  for_each = toset([
    "group:gcp-tredence-orchestration-dev@ae.com"
  ])
  project = var.project
  role    = "roles/storage.objectAdmin"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-composer-worker-dev" {
  for_each = toset([
    "group:gcp-datametica-core-dev@ae.com",
    "group:gcp-dataeng-coreteam-pwrusr@ae.com",
    "serviceAccount:ae-dp-di-cicd-dev@aeo-datains-reporting-dev.iam.gserviceaccount.com",
  ])
  project = var.project
  role    = "roles/composer.worker"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-dataflow-admin-dev" {
  for_each = toset([
    "group:gcp-dataeng-customer-dev@ae.com",
  ])
  project = var.project
  role    = "roles/dataflow.admin"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-apikey-viewer-dev" {
  for_each = toset([
    "group:gcp-dataeng-customer-dev@ae.com"
  ])
  project = var.project
  role    = "roles/serviceusage.apiKeysViewer"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-oauthconfig-editor-dev" {
  for_each = toset([
    "group:gcp-dataeng-customer-dev@ae.com",
  ])
  project = var.project
  role    = "roles/oauthconfig.editor"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-dataflow-worker-dev" {
  for_each = toset([
    "serviceAccount:ae-dp-de-ccp-cta-nonprod@aeo-data-engineering-dev.iam.gserviceaccount.com",
  ])
  project = var.project
  role    = "roles/dataflow.worker"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-token-creator-dev" {
  for_each = toset([
    "group:gcp-dataeng-coreteam-pwrusr@ae.com"
  ])
  project = var.project
  role    = "roles/iam.serviceAccountTokenCreator"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-compute-admin-dev" {
  for_each = toset([
    "group:gcp-dataeng-customer-dev@ae.com",
  ])
  project = var.project
  role    = "roles/compute.admin"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-dmz2de-airt-dev" {
  for_each = toset([
    "serviceAccount:ae-dp-de-dmz2de-airt-nonprod@aeo-data-engineering-dev.iam.gserviceaccount.com",
  ])
  project = var.project
  role    = "roles/iap.httpsResourceAccessor"
  member  = each.key
}

resource "google_project_iam_member" "bbi-iam-role" {
  for_each = toset([
    "group:gcp-bbi-dataops-pwr@ae.com",
  ])
  project = var.project
  role    = "roles/iam.securityAdmin"
  member  = each.key
}

resource "google_project_iam_member" "ae-dp-de-analyticcs-hub-admin-dev" {
  for_each = toset([
    "group:gcp-dataeng-coreteam-pwrusr@ae.com"

  ])
  project = var.project
  role    = "roles/analyticshub.admin"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-df-runner-dev" {
  for_each = toset([
    "serviceAccount:cloud-datafusion-management-sa@n4b1c367ec121c73b-tp.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-de-custgnm-df-dev@aeo-data-engineering-dev.iam.gserviceaccount.com",
  ])
  project = var.project
  role    = "roles/datafusion.runner"
  member  = each.key
}

resource "google_project_iam_binding" "airflow-view" {
  project = var.project
  role    = "organizations/263964278522/roles/airflowView"

  members = [
    "group:gcp-assoc-mpasupport-dev@ae.com",
  ]
}

resource "google_project_iam_binding" "dataform-admin-iam" {
  project = var.project
  role    = "roles/dataform.admin"

  members = [
    "group:gcp-dataeng-coreteam-dev@ae.com",
  ]
}

resource "google_project_iam_member" "pubsub-viewer-dev" {
  for_each = toset([
    "group:gcp-cust-msat-dev@ae.com"
  ])
  project = var.project
  role    = "roles/pubsub.viewer"
  member  = each.key
}

resource "google_project_iam_binding" "bucket-get-dev" {
  project = var.project
  role    = "organizations/263964278522/roles/storageBucketGet"

  members = [
    "group:gcp-store-upload-dev@ae.com",
    "serviceAccount:ae-dp-de-ctrlmgcp-dev@aeo-data-engineering-dev.iam.gserviceaccount.com",
    "serviceAccount:ctrlmgcp-dev@aeo-data-engineering-dev.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-mpa-ctrlm-np@aeo-mpa-datamart-develop.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-sci-composer-sa-dev@aeo-datasci-common-dev.iam.gserviceaccount.com"
  ]
}

resource "google_project_iam_member" "sa-dp-de-pubsub-publisher-dev" {
  for_each = toset([
    "serviceAccount:service-205256888665@gcp-sa-pubsub.iam.gserviceaccount.com",
  ])
  project = var.project
  role    = "roles/pubsub.publisher"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-pubsub-subscriber-dev" {
  for_each = toset([
    "serviceAccount:service-205256888665@gcp-sa-pubsub.iam.gserviceaccount.com",
  ])
  project = var.project
  role    = "roles/pubsub.subscriber"
  member  = each.key
}

resource "google_project_iam_member" "storage-buckets-dev" {
  for_each = toset([
    "serviceAccount:ae-dp-de-loyalty-pubsub-dev@aeo-data-engineering-dev.iam.gserviceaccount.com",
  ])
  project = var.project
  role    = "organizations/263964278522/roles/storageBuckets"
  member  = each.key
}

resource "google_project_iam_member" "vertexSearchCreateDS-dev" {
  for_each = toset([
    "group:gcp-dataeng-coreteam-dev@ae.com",
  ])
  project = var.project
  role    = "organizations/263964278522/roles/vertexSearchCreateDS"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-composer-environment-developer-dev" {
  for_each = toset([
    "serviceAccount:service-986310275048@gcp-sa-datafusion.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-mpa-cicd-dev@aeo-mpa-datamart-develop.iam.gserviceaccount.com",
    "group:gcp-assoc-store-apps-eng@ae.com"
  ])
  project = var.project
  role    = "roles/datafusion.developer"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-serviceUsageAdmin-dev" {
  for_each = toset([
    "group:gcp-bbi-dataops-pwr@ae.com",
  ])
  project = var.project
  role    = "roles/serviceusage.serviceUsageAdmin"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-datalineage-dev" {
  for_each = toset([
    "serviceAccount:service-205256888665@gcp-sa-datafusion.iam.gserviceaccount.com",
    "serviceAccount:ae-dp-de-datafusion-dev@aeo-data-engineering-dev.iam.gserviceaccount.com",
  ])
  project = var.project
  role    = "roles/datalineage.producer"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-stream-viewer-dev" {
  for_each = toset([
    "group:gcp-bbi-pipelinesupport-dev@ae.com",
  ])
  project = var.project
  role    = "roles/datastream.viewer"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-disc-engine-dev" {
  for_each = toset([
    "group:gcp-dataeng-coreteam-dev@ae.com",
  ])
  project = var.project
  role    = "roles/discoveryengine.editor"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-de-disc-engine-admin" {
  for_each = toset([
    "group:gcp-dataeng-coreteam-dev@ae.com",
  ])
  project = var.project
  role    = "roles/discoveryengine.admin"
  member  = each.key
}

resource "google_project_iam_member" "ae-dp-de-cmpsr-dev" {
  for_each = toset([
    "group:gcp-outfitters-core-dev@ae.com",
  ])
  project = var.project
  role    = "roles/composer.user"
  member  = each.key
}


resource "google_project_iam_member" "ae-dp-de-cfsa-dev" {
  for_each = toset([
    "serviceAccount:service-258438075366@gcf-admin-robot.iam.gserviceaccount.com",
  ])
  project = var.project
  role    = "roles/cloudfunctions.serviceAgent"
  member  = each.key
}

resource "google_project_iam_member" "datafusion-browser-dev" {
  for_each = toset([
    "group:gcp-globalservices-dev@ae.com"
  ])
  project = var.project
  role    = "organizations/263964278522/roles/dataFusionBrowser"
  member  = each.key
}

resource "google_project_iam_member" "sa-dp-rd-df-cicd-test" {
  project = var.project
  role    = "roles/bigquery.dataViewer"
  member  = "serviceAccount:ae-dp-rd-df-cicd-test@aeo-data-foundation-test.iam.gserviceaccount.com"
}