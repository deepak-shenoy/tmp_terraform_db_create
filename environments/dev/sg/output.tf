/*
 * Output for DB security groups created
 *
 * Authoer: Deepak Shenoy
 * Date: Since July 28, 2019
 */

output "main_db_sg_env" {
  description                                 = "The Resource ID of the main VPC"
  value                                       = "${module.dev-sg.main_db_sg}"
}