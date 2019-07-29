/*
 * Output for DB Subnet Groups
 *
 * Authoer: Deepak Shenoy
 * Date: Since July 28, 2019
 */

output "db_main_subnet_groups-env" {
  description                                 = "The Resource ID of the main DB Subnet Group"
  value                                       = "${module.dev-db-subnet-groups.db_main_subnet_groups}"
}