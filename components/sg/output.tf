/*
 * Output for Security Group resources created
 *
 * Authoer: Deepak Shenoy
 * Date: Since July 28, 2019
 */

output "main_db_sg" {
  description                                 = "The Resource ID of the main DB Security Group"
  value                                       = "${aws_security_group.aurora-sg.id}"
}