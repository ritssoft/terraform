
resource "aws_instance" "web01" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  
  tags = {
    Name = var.vm_tags
  }

subnet_id = aws_subnet.Terraform-Subnet01.id
}
