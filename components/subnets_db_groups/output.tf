/*
 * Output for DB Subnet Groups
 *
 * Authoer: Deepak Shenoy
 * Date: Since July 28, 2019
 */

output "db_main_subnet_groups" {
  description                                 = "The Resource ID of the main DB Subnet Group"
  value                                       = "${aws_db_subnet_group.db-main-subnet-grp.id}"
}