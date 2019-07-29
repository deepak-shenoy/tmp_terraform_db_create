/*
 * Output for Subnet resources created
 *
 * Authoer: Deepak Shenoy
 * Date: Since July 28, 2019
 */

output "db_front_subnet" {
  description                                 = "The Resource ID of the main DB Security Group"
  value                                       = "${aws_subnet.db-front.id}"
}

output "db_back_subnet" {
  description                                 = "The Resource ID of the main DB Security Group"
  value                                       = "${aws_subnet.db-back.id}"
}