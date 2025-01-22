variable "ami" {
    description = "value for the ami"
}

variable "instance_type" {
    description = "value for instance_type"
    type = map(string)

    default = {
      "dev" = "t2.micro"
      "stage" = "t2.medium"
      "prod" = "t2.large"
    }
}

variable "subnet_id" {
    description = "value for the subnet_id"
}