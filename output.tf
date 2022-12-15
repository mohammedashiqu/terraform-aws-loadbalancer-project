output "aws_lb_arn" {
  value = aws_lb.application-lb.id
}
output "aws_lb_pub_dns" {
  value = aws_lb.application-lb.dns_name
}