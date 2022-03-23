variable "vm_tags" {
    type = string
    description = "VM Names"
}

variable "instance_type" {
    type = string
    description = "VM SKU"
}

variable "subnet_cidr" {
    type = list
    description = "Subnet CIDR Blocks"
}   