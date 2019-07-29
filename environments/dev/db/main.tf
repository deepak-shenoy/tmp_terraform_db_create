/*
 * Definitions to build VPC Development Environment
 *
 * Authoer: Deepak Shenoy
 * Date: Since July 27, 2019
 */

module "dev-db" {
  source                           = "../../../components/db"

  # The security group for the database
  db_security_group                = "${var.db_security_group}"
  rds_cluster_name                 = "${var.rds_cluster_name}"
  rds_instance_class               = "${var.rds_instance_class}"
  rds_username                     = "${var.rds_username}"
  rds_password                     = "${var.rds_password}"
  rds_database_name                = "${var.rds_database_name}"
  rds_subnet_group                 = "${var.rds_subnet_group}"
  rds_engine                       = "${var.rds_engine}"
  rds_engine_version               = "${var.rds_engine_version}"
  rds_instance_zone1               = "${var.rds_instance_zone1}"
  rds_instance_zone2               = "${var.rds_instance_zone2}"

}