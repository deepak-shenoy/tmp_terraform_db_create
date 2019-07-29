/*
 * Definitions to build the various securit groups
 *
 * Authoer: Deepak Shenoy
 * Date: Since July 28, 2019
 */

module "dev-sg" {

  source                           = "../../../components/sg"

  # The security group for the database
  db_security_group                = "db-security-group"

  main_vpc_id                      = "${var.main_vpc_id}"

}