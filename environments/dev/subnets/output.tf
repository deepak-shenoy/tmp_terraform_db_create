/*
 * Output for Subnet resources created
 *
 * Authoer: Deepak Shenoy
 * Date: Since July 28, 2019
 */

output "db_front_subnet" {
  description                                 = "The Resource ID of the main DB Security Group"
  value                                       = "${module.dev-subnets.db_front_subnet}"
}

output "db_back_subnet" {
  description                                 = "The Resource ID of the main DB Security Group"
  value                                       = "${module.dev-subnets.db_back_subnet}"
}