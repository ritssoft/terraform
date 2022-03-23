# Create a VPC
resource "aws_vpc" "Terraform-VPC1" {
  cidr_block = "10.1.0.0/16"

  tags = {
    Name = "Rits_VPC"
  }
}

#Create a Subnet01
resource "aws_subnet" "Terraform-Subnet01" {
  vpc_id            = aws_vpc.Terraform-VPC1.id
  cidr_block        = var.subnet_cidr[0]
  availability_zone = "ap-south-1a"

  tags = {
    Name = "Rits_Subnet01"
  }
}

#Create a Subnet02
resource "aws_subnet" "Terraform-Subnet02" {
  #vpc_id            = data.aws_vpc.Existing-Terraform-VPC.id
  vpc_id           = aws_vpc.Terraform-VPC1.id
  cidr_block        = var.subnet_cidr[1]
  availability_zone = "ap-south-1b"

  tags = {
    Name = "Rits_Subnet02"
  }
}