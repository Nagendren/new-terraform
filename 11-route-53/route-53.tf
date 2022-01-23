resource "aws_route53_zone" "learning-terraform" {
  name = "learning.terraform"
}

#simple routing policy

resource "aws_route53_record" "student" {
  zone_id = aws_route53_zone.learning-terraform.zone_id
  name    = "student.learning.terraform"
  type    = "A"
  ttl     = "300"
  records = ["x.x.x.x"] #we can use variable like [aws_eip.lb.public_ip]
}
