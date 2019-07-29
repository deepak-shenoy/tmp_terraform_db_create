/*
 * Output for the RDS Aurora db created
 *
 * Authoer: Deepak Shenoy
 * Date: Since July 28, 2019
 */

output "main_db_nostname" {
  description                                 = "The Main Database"
  value                                       = "${aws_rds_cluster.cluster.endpoint}"
}