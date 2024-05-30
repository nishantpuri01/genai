module "svc-account-svc-cloud-function-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name             = "svc-cloud-function-dev"
  project_id       = var.project
  additional_roles = ["roles/compute.networkUser", "roles/editor", "roles/storage.admin"]
}

module "svc-account-aig-gcs-upload" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name             = "aig-gcs-upload"
  project_id       = var.project
  additional_roles = ["roles/storage.objectCreator"]
}

module "svc-account-test-teradata-connection" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "test-teradata-connection"
  project_id = var.project

}

module "svc-account-hypmrc-bigquery-upload-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name             = "hypmrc-bigquery-upload-dev"
  project_id       = var.project
  additional_roles = ["roles/bigquery.jobUser"]
}

module "svc-account-dataflow-dev-83" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name             = "dataflow-dev-83"
  project_id       = var.project
  additional_roles = ["roles/compute.instanceAdmin.v1", "roles/compute.networkUser", "roles/dataflow.admin", "roles/dataflow.developer", "roles/dataflow.serviceAgent", "roles/dataflow.viewer", "roles/dataflow.worker"]
}

module "svc-account-gke-deploy-badtiak" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name             = "gke-deploy-badtiak"
  project_id       = var.project
  additional_roles = ["roles/appengine.appAdmin", "roles/compute.instanceAdmin.v1", "roles/compute.networkUser", "roles/container.admin", "roles/container.clusterAdmin", "roles/container.serviceAgent", "roles/editor", "roles/iam.securityAdmin", "roles/logging.logWriter", "roles/storage.admin", "roles/storage.objectAdmin"]
}

module "svc-account-localairflowtestsvcacc" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name             = "localairflowtestsvcacc"
  project_id       = var.project
  additional_roles = ["roles/bigquery.admin", "roles/bigquery.dataEditor", "roles/bigquery.dataOwner", "roles/bigquery.dataViewer", "roles/bigquery.jobUser", "roles/bigquery.metadataViewer", "roles/bigquery.readSessionUser", "roles/bigquery.user", "roles/composer.admin", "roles/composer.environmentAndStorageObjectAdmin", "roles/composer.environmentAndStorageObjectViewer", "roles/composer.user", "roles/composer.worker"]
}

module "svc-account-ae-dp-de-dftriggerviacf-sa-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-dftriggerviacf-sa-dev"
  project_id = var.project

}

module "svc-account-dag-trigger" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name             = "dag-trigger"
  project_id       = var.project
  additional_roles = ["roles/composer.user", "roles/iam.serviceAccountActor", "roles/iam.serviceAccountTokenCreator", "projects/aeo-data-engineering-dev/roles/ComposerGcloudAccess", "roles/composer.ServiceAgentV2Ext", "roles/composer.worker"]
}

module "svc-account-dag-trigger-key" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account-key?ref=service-account-key/0.4"

  name                  = module.svc-account-dag-trigger.service_account.account_id
  service_account_email = module.svc-account-dag-trigger.service_account.email
  project_id            = var.project
  group_email_id        = "gcp-dataeng-qa-dev@ae.com"
}

module "svc-account-test-svc-acc" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name             = "test-svc-acc"
  project_id       = var.project
  additional_roles = ["roles/bigquery.dataViewer"]
}

module "svc-account-dev-gke-srv-192" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name             = "dev-gke-srv-192"
  project_id       = var.project
  additional_roles = ["roles/compute.networkUser", "roles/container.clusterAdmin"]
}

module "svc-account-sterling-pubsub-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name             = "sterling-pubsub-dev"
  project_id       = var.project
  additional_roles = ["roles/pubsub.publisher"]
}

module "svc-account-test-automation-project-owner" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name             = "test-automation-project-owner"
  project_id       = var.project
  additional_roles = ["roles/bigquery.dataEditor", "roles/bigquery.dataViewer", "roles/bigquery.jobUser", "roles/composer.user", "roles/datafusion.admin", "roles/datafusion.runner", "roles/pubsub.editor", "roles/storage.objectViewer"]
}

module "svc-account-terraform" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name             = "terraform"
  project_id       = var.project
  additional_roles = ["roles/compute.admin", "roles/compute.networkUser", "roles/editor"]
}

module "svc-account-query-user-test" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name             = "query-user-test"
  project_id       = var.project
  additional_roles = ["roles/bigquery.jobUser", "roles/bigquery.user"]
}

module "svc-account-ae-dp-de-dataproc-sa-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name             = "ae-dp-de-dataproc-sa-dev"
  project_id       = var.project
  additional_roles = ["roles/dataproc.worker"]
}

module "svc-account-op324-composer" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name             = "op324-composer"
  project_id       = var.project
  additional_roles = ["projects/aeo-data-engineering-dev/roles/gcloud_composer_user", "roles/bigquery.dataOwner", "roles/bigquery.jobUser", "roles/bigquery.user", "roles/composer.environmentAndStorageObjectViewer", "roles/composer.user", "roles/compute.networkUser", "roles/container.hostServiceAgentUser", "roles/dataproc.serviceAgent"]
}

module "svc-account-ae-dp-de-collibra-sa-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name             = "ae-dp-de-collibra-sa-dev"
  project_id       = var.project
  additional_roles = ["roles/datacatalog.viewer"]
}

#managed by svcaccount.tf
#module "svc-account-svc-ae-dp-de-sterling-pubsub" {
#  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"
#
#  name = "svc-ae-dp-de-sterling-pubsub"
#  project_id = var.project
#  additional_roles = ["roles/pubsub.publisher"]
#}

#managed in svcaccount.tf
#module "svc-account-ae-dp-de-gcs2aeo-dev" {
#  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"
#
#  name = "ae-dp-de-gcs2aeo-dev"
#  project_id = var.project
#  additional_roles = ["roles/pubsub.subscriber","roles/storage.admin"]
#}

module "svc-account-svc-de-onprem-exporter-gcs-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name             = "svc-de-onprem-exporter-gcs-dev"
  project_id       = var.project
  additional_roles = ["roles/storage.objectAdmin"]
}

module "svc-account-aeo-data-engineering-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name             = "aeo-data-engineering-dev"
  project_id       = var.project
  additional_roles = ["roles/cloudscheduler.admin", "roles/dataproc.admin", "roles/dataproc.editor", "roles/dataproc.worker", "roles/editor", "roles/iam.serviceAccountTokenCreator", "roles/iap.admin", "roles/iap.httpsResourceAccessor", "roles/secretmanager.secretAccessor"]
}

module "svc-account-aeo-data-engineering-dev-key" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account-key?ref=service-account-key/0.4"

  name                  = module.svc-account-aeo-data-engineering-dev.service_account.account_id
  service_account_email = module.svc-account-aeo-data-engineering-dev.service_account.email
  project_id            = var.project
  group_email_id        = "gcp-dataeng-qa-dev@ae.com"
}

module "svc-account-kumarbekoy-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name             = "kumarbekoy-dev"
  project_id       = var.project
  additional_roles = ["roles/bigquery.jobUser", "roles/bigquery.user", "roles/composer.user", "roles/storage.objectViewer"]
}

module "svc-account-dev-gke-srv" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "dev-gke-srv"
  project_id = var.project

}

module "svc-account-ae-dp-de-composer-sa-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-composer-sa-dev"
  project_id = var.project
  additional_roles = ["roles/bigquery.jobUser", "roles/composer.worker",
    "roles/bigquery.dataEditor", "roles/bigquery.jobUser", "roles/datafusion.admin",
    "roles/dataproc.editor", "roles/iam.serviceAccountUser",
    "roles/storage.objectAdmin", "roles/storagetransfer.admin",
    "roles/cloudkms.cryptoKeyEncrypterDecrypter",
    "roles/compute.instanceAdmin", "roles/logging.viewer"
  ]
}

module "svc-account-corecompete-bigquery-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name             = "corecompete-bigquery-dev"
  project_id       = var.project
  additional_roles = ["roles/bigquery.jobUser"]
}

module "svc-account-dataflow-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "dataflow-dev"
  project_id = var.project

}

module "svc-account-test-data-eng" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name             = "test-data-eng"
  project_id       = var.project
  additional_roles = ["roles/bigquery.admin", "roles/bigquery.dataEditor", "roles/bigquery.dataOwner", "roles/bigquery.dataViewer", "roles/bigquery.jobUser", "roles/bigquery.metadataViewer", "roles/bigquery.readSessionUser", "roles/bigquery.user"]
}

module "svc-account-testowner" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name             = "testowner"
  project_id       = var.project
  additional_roles = ["roles/browser", "roles/editor", "roles/owner", "roles/viewer"]
}

module "svc-account-data-fusion-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name             = "ae-dp-de-datafusion-dev"
  project_id       = var.project
  additional_roles = [
    "roles/bigquery.dataViewer",
    "roles/bigquery.jobUser",
    "roles/cloudtranslate.admin",
    "roles/composer.admin",
    "roles/container.admin",
    "roles/dataflow.admin",
    "roles/datafusion.admin",
    "roles/dataproc.admin",
    "roles/logging.admin",
    "roles/monitoring.admin",
    "roles/pubsub.admin",
    "roles/stackdriver.resourceMetadata.writer",
    "roles/storage.admin",
  ]
}

module "ae-dp-de-shoprunner-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-shoprunner-dev"
  project_id = var.project
  additional_roles = [
    "roles/dataflow.worker",
  ]
}

module "ae-dp-de-atgorder-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-atgorder-dev"
  project_id = var.project
  additional_roles = [
    "roles/bigquery.dataEditor",
    "roles/bigquery.jobUser",
    "roles/bigquery.user",
    "roles/dataflow.worker",
    "roles/compute.networkUser",
    "roles/storage.objectAdmin",
  ]
}

module "ae-dp-de-atgorder-dev-key" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account-key?ref=service-account-key/0.4"

  name                  = module.ae-dp-de-atgorder-dev.service_account.account_id
  service_account_email = module.ae-dp-de-atgorder-dev.service_account.email
  project_id            = var.project
  group_email_id        = "gcp-dataeng-coreteam-pwrusr@ae.com"
}

module "ae-dp-de-dmz2de-opex-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-dmz2de-opex-dev"
  project_id = var.project
  additional_roles = [
    "roles/composer.user",
  ]
}

module "ae-dp-de-compute-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-compute-dev"
  project_id = var.project
  additional_roles = [
    "roles/compute.instanceAdmin",
  ]
}

module "ae-dp-de-xignite-currency-exchange-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-xignite-exch-dev"
  project_id = var.project
  additional_roles = [
  ]
}

module "ae-dp-de-xignite-currency-exchange-key" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account-key?ref=service-account-key/0.4"

  name                  = module.ae-dp-de-xignite-currency-exchange-dev.service_account.account_id
  service_account_email = module.ae-dp-de-xignite-currency-exchange-dev.service_account.email
  project_id            = var.project
  group_email_id        = "gcp-dataeng-coreteam-pwrusr@ae.com"
}

module "ae-dp-de-data-exch-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-data-exch-dev"
  project_id = var.project
  additional_roles = [
    "roles/storage.admin",
  ]
}

module "ae-dp-de-data-exch-dev-sa-key" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account-key?ref=service-account-key/0.4"

  name                  = module.ae-dp-de-data-exch-dev.service_account.account_id
  service_account_email = module.ae-dp-de-data-exch-dev.service_account.email
  project_id            = var.project
  group_email_id        = "gcp-dataeng-coreteam-pwrusr@ae.com"
}

module "ae-dp-de-do12597-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-cicd-dev"
  project_id = var.project
  additional_roles = [
    "roles/datafusion.admin",
    "roles/composer.user",
    "roles/storage.objectAdmin",
    "roles/cloudfunctions.developer",
    "roles/dataflow.admin",
    "roles/bigquery.admin",
    "roles/iam.serviceAccountUser",
  ]
}

module "ae-dp-de-do12597-dev-sa-key" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account-key?ref=service-account-key/0.4"

  name                  = module.ae-dp-de-do12597-dev.service_account.account_id
  service_account_email = module.ae-dp-de-do12597-dev.service_account.email
  project_id            = var.project
  group_email_id        = "gcp-org-devops-pwr@ae.com"
}

module "ae-dp-de-dataflow-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-dataflow-dev"
  project_id = var.project
  additional_roles = ["roles/dataflow.worker"
  ]
}

module "ae-dp-de-td-migration-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account"

  name       = "ae-dp-de-td-migration-dev"
  project_id = var.project
  additional_roles = [
  ]
}

module "ae-dp-de-atgreconcile-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-atgreconcile-dev"
  project_id = var.project
  additional_roles = [
    "roles/bigquery.dataEditor",
    "roles/dataflow.worker"
  ]
}

module "ae-dp-de-atgreconcile-dev-key" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account-key?ref=service-account-key/0.4"

  name                  = module.ae-dp-de-atgreconcile-dev.service_account.account_id
  service_account_email = module.ae-dp-de-atgreconcile-dev.service_account.email
  project_id            = var.project
  group_email_id        = "gcp-dataeng-coreteam-pwrusr@ae.com"
}

module "ae-dp-de-test-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-test-dev"
  project_id = var.project
  additional_roles = ["roles/bigquery.dataEditor",
    "roles/bigquery.dataViewer",
    "roles/bigquery.jobUser",
    "roles/composer.user", 
    "roles/datafusion.admin", 
    "roles/datafusion.runner", 
    "roles/pubsub.editor", 
    "roles/storage.objectViewer",
  ]
}

module "ae-dp-de-test-dev-key" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account-key?ref=service-account-key/0.4"

  name                  = module.ae-dp-de-test-dev.service_account.account_id
  service_account_email = module.ae-dp-de-test-dev.service_account.email
  project_id            = var.project
  group_email_id        = "gcp-dataeng-qa-dev@ae.com"
}

module "svc-ae-dp-de-dataplex-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-dataplex-dev"
  project_id = var.project
  additional_roles = ["roles/bigquery.user",
    "roles/dataplex.developer",
    "roles/dataplex.metadataReader",
    "roles/metastore.metadataViewer", 
    "roles/dataproc.worker", 
    "roles/serviceusage.serviceUsageConsumer",
    "roles/bigquery.dataEditor",
    "roles/compute.networkUser",
    "roles/compute.instanceAdmin.v1",
    "roles/dataproc.editor",
  ]
}

module "ae-dp-de-ctrlmgcp-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-ctrlmgcp-dev"
  project_id = var.project
  additional_roles = [
    "roles/storage.objectViewer",
  ]
}

module "ae-dp-de-ctrlmgcp-dev-key" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account-key?ref=service-account-key/0.4"

  name                  = module.ae-dp-de-ctrlmgcp-dev.service_account.account_id
  service_account_email = module.ae-dp-de-ctrlmgcp-dev.service_account.email
  project_id            = var.project
  group_email_id        = "gcp-dataeng-coreteam-pwrusr@ae.com"
}

module "ae-dp-de-dmz2de-airt-nonprod" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-dmz2de-airt-nonprod"
  project_id = var.project
  additional_roles = [
    "roles/datastore.user",
    "roles/composer.user",
  ]
}

module "ae-dp-de-loyalty-mysql-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-loyalty-mysql-dev"
  project_id = var.project
  additional_roles = [
    "roles/bigquery.user",
    ]
}

module "ae-dp-de-loyalty-mysql-dev-key" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account-key?ref=service-account-key/0.4"

  name                  = module.ae-dp-de-loyalty-mysql-dev.service_account.account_id
  service_account_email = module.ae-dp-de-loyalty-mysql-dev.service_account.email
  project_id            = var.project
  group_email_id        = "gcp-dataeng-coreteam-pwrusr@ae.com"
}

module "ae-dp-de-dfcde-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-dfcde-dev"
  project_id = var.project
  additional_roles = [
      "roles/storage.objectAdmin",
      "roles/dataflow.admin",
      "roles/bigquery.admin",
      "roles/pubsub.editor",
      "roles/dataflow.worker",
  ]
}

module "svc-account-ae-dp-de-ccp-cta-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-ccp-cta-nonprod"
  project_id = var.project
}

module "ae-dp-de-custcsr-db-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-custcsr-db-dev"
  project_id = var.project
  additional_roles = [
    
    ]
}

module "ae-dp-de-composer-sa-dev-key" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account-key?ref=service-account-key/0.4"

  name                  = module.svc-account-ae-dp-de-composer-sa-dev.service_account.account_id
  service_account_email = module.svc-account-ae-dp-de-composer-sa-dev.service_account.email
  project_id            = var.project
  group_email_id        = "gcp-dataeng-coreteam-pwrusr@ae.com"
}

module "ae-dp-de-examples-cf-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-examples-cf-dev"
  project_id = var.project
  additional_roles = [
    "roles/pubsub.editor",
    "roles/datastore.user",
    "roles/storage.objectAdmin",
    "roles/bigquery.user",
    ]
}

module "ae-dp-de-aeo2neustar-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-aeo2neustar-dev"
  project_id = var.project
  additional_roles = [
    "roles/pubsub.editor",
    "roles/datastore.user",
    "roles/storage.objectAdmin",
    "roles/bigquery.user",
    ]
}

module "ae-dp-de-aeoloy-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-aeoloy-dev"
  project_id = var.project
  additional_roles = [
    "roles/pubsub.editor",
    "roles/datastore.user",
    "roles/storage.objectAdmin",
    "roles/bigquery.user",
    ]
}

module "ae-dp-de-cicd-demo-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-cicd-demo-dev"
  project_id = var.project
  additional_roles = [
    "roles/pubsub.editor",
    "roles/datastore.user",
    "roles/storage.objectAdmin",
    "roles/bigquery.user",
    ]
}

module "ae-dp-de-cicd-dm-islndpprg-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-cicd-dm-islndpprg-dev"
  project_id = var.project
  additional_roles = [
    "roles/pubsub.editor",
    "roles/datastore.user",
    "roles/storage.objectAdmin",
    "roles/bigquery.user",
    ]
}

module "ae-dp-de-cmpr-trg-mtng-ups-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-cmpr-trg-mtng-ups-dev"
  project_id = var.project
  additional_roles = [
    "roles/pubsub.editor",
    "roles/datastore.user",
    "roles/storage.objectAdmin",
    "roles/bigquery.user",
    ]
}

module "ae-dp-de-cmpr-trg-voc-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-cmpr-trg-voc-dev"
  project_id = var.project
  additional_roles = [
    "roles/pubsub.editor",
    "roles/datastore.user",
    "roles/storage.objectAdmin",
    "roles/bigquery.user",
    ]
}

module "ae-dp-de-prcl-dag-trg-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-prcl-dag-trg-dev"
  project_id = var.project
  additional_roles = [
    "roles/pubsub.editor",
    "roles/datastore.user",
    "roles/storage.objectAdmin",
    "roles/bigquery.user",
    ]
}

module "ae-dp-de-dag-runs-clltr-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-dag-runs-clltr-dev"
  project_id = var.project
  additional_roles = [
    "roles/pubsub.editor",
    "roles/datastore.user",
    "roles/storage.objectAdmin",
    "roles/bigquery.user",
    ]
}

module "ae-dp-de-test-cmpr-trg-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-test-cmpr-trg-dev"
  project_id = var.project
  additional_roles = [
    "roles/pubsub.editor",
    "roles/datastore.user",
    "roles/storage.objectAdmin",
    "roles/bigquery.user",
    ]
}

module "ae-dp-de-test-nishanth-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-test-nishanth-dev"
  project_id = var.project
  additional_roles = [
    "roles/pubsub.editor",
    "roles/datastore.user",
    "roles/storage.objectAdmin",
    "roles/bigquery.user",
    ]
}

module "ae-dp-de-test-trg-dag-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-test-trg-dag-dev"
  project_id = var.project
  additional_roles = [
    "roles/pubsub.editor",
    "roles/datastore.user",
    "roles/storage.objectAdmin",
    "roles/bigquery.user",
    ]
}

module "ae-dp-de-cicd-dm-chthtrl-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-cicd-dm-chthtrl-dev"
  project_id = var.project
  additional_roles = [
    "roles/pubsub.editor",
    "roles/datastore.user",
    "roles/storage.objectAdmin",
    "roles/bigquery.user",
    ]
}

module "ae-dp-de-mddf-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-mddf-dev"
  project_id = var.project
  additional_roles = [
    "roles/pubsub.editor",
    "roles/datastore.user",
    "roles/storage.objectAdmin",
    "roles/bigquery.user",
    ]
}

module "ae-dp-de-cf-pb-mtd-cllr-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-cf-pb-mtd-cllr-dev"
  project_id = var.project
  additional_roles = [
    "roles/pubsub.editor",
    "roles/datastore.user",
    "roles/storage.objectAdmin",
    "roles/bigquery.user",
    ]
}

module "ae-dp-de-opex-lbr-planning-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-opex-lbr-planning-dev"
  project_id = var.project
  additional_roles = [
    "roles/pubsub.editor",
    "roles/datastore.user",
    "roles/storage.objectAdmin",
    "roles/bigquery.user",
    ]
}

module "ae-dp-de-opex2aeo-dg-trg-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-opex2aeo-dg-trg-dev"
  project_id = var.project
  additional_roles = [
    "roles/pubsub.editor",
    "roles/datastore.user",
    "roles/storage.objectAdmin",
    "roles/bigquery.user",
    ]
}

module "ae-dp-de-arch-cp-to-trt-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-arch-cp-to-trt-dev"
  project_id = var.project
  additional_roles = [
    "roles/pubsub.editor",
    "roles/datastore.user",
    "roles/storage.objectAdmin",
    "roles/bigquery.user",
    ]
}

module "ae-dp-de-cmpr-trg-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-cmpr-trg-dev"
  project_id = var.project
  additional_roles = [
    "roles/pubsub.editor",
    "roles/datastore.user",
    "roles/storage.objectAdmin",
    "roles/bigquery.user",
    ]
}

module "ae-dp-de-cmpr-trg-airflow2-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-cmpr-trg-airflow2-dev"
  project_id = var.project
  additional_roles = [
    "roles/pubsub.editor",
    "roles/datastore.user",
    "roles/storage.objectAdmin",
    "roles/bigquery.user",
    ]
}

module "ae-dp-de-cmpr-trg-cnst-ups-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-cmpr-trg-cnst-ups-dev"
  project_id = var.project
  additional_roles = [
    "roles/pubsub.editor",
    "roles/datastore.user",
    "roles/storage.objectAdmin",
    "roles/bigquery.user",
    ]
}

module "ae-dp-de-cmpr-trg-rdt-dgs-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-cmpr-trg-rdt-dgs-dev"
  project_id = var.project
  additional_roles = [
    "roles/pubsub.editor",
    "roles/datastore.user",
    "roles/storage.objectAdmin",
    "roles/bigquery.user",
    ]
}

module "ae-dp-de-cmpr-trg-flsn-dgs-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-cmpr-trg-flsn-dgs-dev"
  project_id = var.project
  additional_roles = [
    "roles/pubsub.editor",
    "roles/datastore.user",
    "roles/storage.objectAdmin",
    "roles/bigquery.user",
    ]
}

module "ae-dp-de-cmpr-trg-inbd-dgs-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-cmpr-trg-inbd-dgs-dev"
  project_id = var.project
  additional_roles = [
    "roles/pubsub.editor",
    "roles/datastore.user",
    "roles/storage.objectAdmin",
    "roles/bigquery.user",
    ]
}

module "ae-dp-de-cmpr-trg-strfnc-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-cmpr-trg-strfnc-dev"
  project_id = var.project
  additional_roles = [
    "roles/pubsub.editor",
    "roles/datastore.user",
    "roles/storage.objectAdmin",
    "roles/bigquery.user",
    ]
}

module "cf-sa-opex-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "cf-opex"
  project_id = var.project
  additional_roles = [
    "roles/composer.user",
    "roles/datastore.user",
    ]
}

module "cf-sa-airt-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "cf-airt"
  project_id = var.project
  additional_roles = [
    "roles/composer.user",
    "roles/datastore.user",
    ]
}

module "sa-ae-dp-de-cde2pref-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-cde2pref-dev"
  project_id = var.project
  additional_roles = [
    ]
}

module "sa-ae-dp-de-cde2pref-dev-key" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account-key?ref=service-account-key/0.4"

  name                  = module.sa-ae-dp-de-cde2pref-dev.service_account.account_id
  service_account_email = module.sa-ae-dp-de-cde2pref-dev.service_account.email
  project_id            = var.project
  group_email_id        = "gcp-bbi-dataops-pwr@ae.com"
}

module "ae-dp-de-riskprofile-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"
  name       = "ae-dp-de-riskprofile-dev"
  project_id = var.project
  additional_roles = [
    ]
}

module "sa-ae-dp-de-riskprofile-dev-key" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account-key?ref=service-account-key/0.4"
  name                  = module.ae-dp-de-riskprofile-dev.service_account.account_id
  service_account_email = module.ae-dp-de-riskprofile-dev.service_account.email
  project_id            = var.project
  group_email_id        = "gcp-dataeng-coreteam-pwrusr@ae.com"
}

module "ae-dp-de-dbtcore-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"
  name       = "ae-dp-de-dbtcore-dev"
  project_id = var.project
  additional_roles = ["roles/bigquery.admin"]
}

module "sa-ae-dp-de-dbtcore-dev-key" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account-key?ref=service-account-key/0.4"
  name                  = module.ae-dp-de-dbtcore-dev.service_account.account_id
  service_account_email = module.ae-dp-de-dbtcore-dev.service_account.email
  project_id            = var.project
  group_email_id        = "gcp-bbi-dataops-pwr@ae.com"
}

module "ae-dp-de-bqinfo-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"
  name       = "ae-dp-de-bqinfo-dev"
  project_id = var.project
  additional_roles = [
    ]
}

module "sa-ae-dp-de-bqinfo-dev-key" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account-key?ref=service-account-key/0.4"
  name                  = module.ae-dp-de-bqinfo-dev.service_account.account_id
  service_account_email = module.ae-dp-de-bqinfo-dev.service_account.email
  project_id            = var.project
  group_email_id        = "gcp-bbi-dataops-pwr@ae.com"
}

module "ae-dp-de-loyalty-pubsub-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"
  name       = "ae-dp-de-loyalty-pubsub-dev"
  project_id = var.project
  additional_roles = [
    ]
}

module "sa-ae-dp-de-loyalty-pubsub-dev-key" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account-key?ref=service-account-key/0.4"
  name                  = module.ae-dp-de-loyalty-pubsub-dev.service_account.account_id
  service_account_email = module.ae-dp-de-loyalty-pubsub-dev.service_account.email
  project_id            = var.project
  group_email_id        = "gcp-bbi-dataops-pwr@ae.com"
}

module "ae-dp-de-custgnm-df-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"
  name       = "ae-dp-de-custgnm-df-dev"
  project_id = var.project
  additional_roles = [
  ]
}

module "sa-ae-dp-de-custgnm-df-dev-key" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account-key?ref=service-account-key/0.4"
  name                  = module.ae-dp-de-custgnm-df-dev.service_account.account_id
  service_account_email = module.ae-dp-de-custgnm-df-dev.service_account.email
  project_id            = var.project
  group_email_id        = "gcp-bbi-dataops-pwr@ae.com"
}

module "ae-dp-de-custgnm-cmpsr-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"
  name       = "ae-dp-de-custgnm-cmpsr-dev"
  project_id = var.project
  additional_roles = [
    ]
}

module "sa-ae-dp-de-custgnm-cmpsr-dev-key" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account-key?ref=service-account-key/0.4"
  name                  = module.ae-dp-de-custgnm-cmpsr-dev.service_account.account_id
  service_account_email = module.ae-dp-de-custgnm-cmpsr-dev.service_account.email
  project_id            = var.project
  group_email_id        = "gcp-bbi-dataops-pwr@ae.com"
}

module "ctrlmgcp-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ctrlmgcp-dev"
  project_id = var.project
  additional_roles = [
    "roles/storage.objectViewer",
  ]
}

module "ctrlmgcp-dev-key" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account-key?ref=service-account-key/0.4"

  name                  = module.ctrlmgcp-dev.service_account.account_id
  service_account_email = module.ctrlmgcp-dev.service_account.email
  project_id            = var.project
  group_email_id        = "gcp-dataeng-coreteam-pwrusr@ae.com"
}

module "cf-locatr-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"
  name       = "cf-locatr-dev"
  project_id = var.project
  additional_roles = [
    "organizations/263964278522/roles/storageBrowser",
    "roles/composer.user",
  ]
}

module "cf-radar-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"
  name       = "cf-radar-dev"
  project_id = var.project
  additional_roles = [
    "organizations/263964278522/roles/storageBrowser",
    "roles/composer.user",
  ]
}

module "ae-dp-de-pss-cicd-dev" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account?ref=service-account/0.1"

  name       = "ae-dp-de-pss-cicd-dev"
  project_id = var.project
  additional_roles = [
    "organizations/263964278522/roles/storageBrowser",
    "roles/composer.user",
    "roles/bigquery.dataViewer",
    "roles/bigquery.jobUser",
  ]
}

module "ae-dp-de-pss-cicd-dev-sa-key" {
  source = "git::ssh://git@code.ae.com:7999/gcpin/aeo-infra-automation-modules.git//service-account-key?ref=service-account-key/0.4"

  name                  = module.ae-dp-de-pss-cicd-dev.service_account.account_id
  service_account_email = module.ae-dp-de-pss-cicd-dev.service_account.email
  project_id            = var.project
  group_email_id        = "gcp-bbi-dataops-pwr@ae.com"
}
