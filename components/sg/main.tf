/*
 * Common component to build security groups
 *
 * Authoer: Deepak Shenoy
 * Date: Since July 28, 2019
 */

resource "aws_security_group" "aurora-sg" {
  name = "${var.db_security_group}"
  vpc_id = "${var.main_vpc_id}"

  ingress {
    protocol = "tcp"
    from_port = 3306
    to_port = 3306
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    protocol = -1
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}