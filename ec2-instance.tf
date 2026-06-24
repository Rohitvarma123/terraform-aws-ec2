resource "aws_instance" "my-ec2-vm" {
  ami           = data.aws_ami.amzlinux.id
  instance_type = "t3.micro"
  key_name      = "docker"

  user_data = <<EOF
#!/bin/bash
yum update -y
amazon-linux-extras install -y nginx1
systemctl enable nginx
systemctl start nginx
echo "<h1>Welcome to vcube! AWS infra created using Terraform</h1>" > /usr/share/nginx/html/index.html
EOF

  vpc_security_group_ids = [
    aws_security_group.ssh.id,
    aws_security_group.web.id
  ]

  tags = {
    Name = "nginx-server"
  }
}



