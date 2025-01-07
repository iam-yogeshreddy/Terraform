provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "./modules_ec2-instance"
  ami_value = "ami-053b12d3152c0cc71" 
  instance_type_value = "t2.micro"
  subnet_id_value = "subnet-0074fea0a1606239d"
}