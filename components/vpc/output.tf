/*
 * Output for VPC resources created
 *
 * Authoer: Deepak Shenoy
 * Date: Since July 27, 2019
 */

output "main_vpc_id" {
  description                                 = "The Resource ID of the main VPC"
  value                                       = "${aws_vpc.main_vpc.id}"
}