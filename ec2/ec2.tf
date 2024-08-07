resource "aws_instance" "app1" {
  ami           = var.ami_id
  instance_type = var.instance_type
  #vpc_id     = data.terraform_remote_state.vpc.outputs.vpc_id
  subnet_id = data.terraform_remote_state.vpc.outputs.private_subnet_ids[0] #

  tags = {
    Name = "LFClass1"
  }
}

resource "aws_instance" "app2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  #vpc_id     = data.terraform_remote_state.vpc.outputs.vpc_id
  subnet_id = data.terraform_remote_state.vpc.outputs.private_subnet_ids[0] #

  tags = {
    Name = "LFClass2"
  }
}