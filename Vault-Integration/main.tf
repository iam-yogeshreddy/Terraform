provider "aws" {
  region = "ap-south-1"
}

provider "vault" {
  address = "http://3.110.103.129:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id = "<id>"
      secret_id = "<id>"
    }
  }
}

data "vault_kv_secret_v2" "example" {
  mount = "kv" // change it according to your mount
  name  = "test-secret" // change it according to your secret
}

resource "aws_instance" "my_instance" {
  ami = "ami-053b12d3152c0cc71"
  instance_type = "t2.micro"
  subnet_id = "subnet-0074fea0a1606239d"

  tags = {
    Name = "test"
    Secret = data.vault_kv_secret_v2.example.data["username"]
  }
}
