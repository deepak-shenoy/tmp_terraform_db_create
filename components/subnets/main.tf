/*
 * Common component to create Subnets
 *
 * Authoer: Deepak Shenoy
 * Date: Since July 28, 2019
 */

resource "aws_subnet" "db-front" {
  vpc_id = "${var.db_main_vpc}"
  cidr_block = "${var.db_front_cidr_block}"
  availability_zone = "${var.db_front_az}"
  tags = {
    Name = "Front Main DB Subnet"
  }
}

resource "aws_subnet" "db-back" {
  vpc_id = "${var.db_main_vpc}"
  cidr_block = "${var.db_back_cidr_block}"
  availability_zone = "${var.db_back_az}"
  tags = {
    Name = "Back Main DB Subnet"
  }
}