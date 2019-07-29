/*
 * This is the 'main' Terraform file used to create and bring
 * up the environments for the whole infrastructure.
 */

module "dev" {
  source = "./environments/dev"
}