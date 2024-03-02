
output "loadbalancer_dns" {
  value = aws_lb.myalb.dns_name
}

output "public_ip_web1"  {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.webserver1.public_ip
 
}

output "public_ip_web2" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.webserver2.public_ip
}
