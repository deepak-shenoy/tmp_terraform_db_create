/*
 * Common component to create DB Subnet Groups
 *
 * Authoer: Deepak Shenoy
 * Date: Since July 28, 2019
 */

resource "aws_db_subnet_group" "db-main-subnet-grp" {
  name = "main default db subnet group"
  subnet_ids = ["${var.front_subnet}", "${var.back_subnet}"]

  tags = {

    Name = "Main DB Subnet Groups"
  }
}