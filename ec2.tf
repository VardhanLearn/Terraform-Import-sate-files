resource "aws_instance" "web-1" {
  ami                         = var.imagename
  instance_type               = var.instance_type
  key_name                    = var.key
  subnet_id                   = data.terraform_remote_state.devopsb4-state.outputs.subnet_1
  vpc_security_group_ids      = [data.terraform_remote_state.devopsb4-state.outputs.sg]
  associate_public_ip_address = true
  tags = {
    Name       = "Server-1"
    Env        = "PROD"
    Owner      = "Shiva"
    CostCenter = "ABCD"
  }
}

resource "aws_instance" "web-2" {
  ami                         = var.imagename
  instance_type               = var.instance_type
  key_name                    = var.key
  subnet_id                   = data.terraform_remote_state.devopsb4-state.outputs.subnet_2
  vpc_security_group_ids      = [data.terraform_remote_state.devopsb4-state.outputs.sg]
  associate_public_ip_address = true
  tags = {
    Name       = "Server-2"
    Env        = "PROD"
    Owner      = "Shiva"
    CostCenter = "ABCD"
  }
}

resource "aws_instance" "web-3" {
  ami                         = var.imagename
  instance_type               = var.instance_type
  key_name                    = var.key
  subnet_id                   = data.terraform_remote_state.devopsb4-state.outputs.subnet_3
  vpc_security_group_ids      = [data.terraform_remote_state.devopsb4-state.outputs.sg]
  associate_public_ip_address = true
  tags = {
    Name       = "Server-3"
    Env        = "PROD"
    Owner      = "Shiva"
    CostCenter = "ABCD"
  }
}