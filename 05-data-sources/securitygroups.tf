data "aws_ip_ranges" "mumbai_ec2" {
  regions  = ["ap-south-1"]
  services = ["ec2"]
}

resource "aws_security_group" "test-sg" {
  name = "first-sg"

  ingress {
    from_port   = "443"
    to_port     = "443"
    protocol    = "tcp"
    cidr_blocks = data.aws_ip_ranges.mumbai_ec2.cidr_blocks
  }
  tags = {
    CreateDate = data.aws_ip_ranges.mumbai_ec2.create_date
    SyncToken  = data.aws_ip_ranges.mumbai_ec2.sync_token
  }
}
