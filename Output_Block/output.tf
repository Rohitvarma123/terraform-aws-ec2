output "ec2_instance_publicip" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.my-ec2-vm.public_ip
}

output "ec2_publicdns" {
  description = "Public DNS of EC2 instance"
  value       = aws_instance.my-ec2-vm.public_dns
}

