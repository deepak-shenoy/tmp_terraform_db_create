/*
 * Common component to build VPC
 *
 * Authoer: Deepak Shenoy
 * Date: Since July 27, 2019
 */

resource "aws_vpc" "main_vpc" {
  cidr_block = "${var.cidr_block}"
  instance_tenancy = "${var.instance_tenacy}"
  tags = {
    Name = "Main"
    Environment = "${var.environment_tag}"
  }
}