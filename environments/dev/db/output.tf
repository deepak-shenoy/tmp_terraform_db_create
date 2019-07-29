/*
 * Output for DB created
 *
 * Authoer: Deepak Shenoy
 * Date: Since July 28, 2019
 */

output "main_db_hostname" {
  description                                 = "The main DB hostname"
  value                                       = "${module.dev-db.main_db_nostname}"
}