variable "provider_project" {}
variable "provider_region" {}
variable "display_name" {}
variable "parent" {}

provider "google" {
  project     = var.provider_project
  region      = var.provider_region
}
resource "google_folder" "folder_1" {
  display_name = var.display_name
  parent       = var.parent
}

output "folder_name" {
  value = google_folder.folder_1.name
}
