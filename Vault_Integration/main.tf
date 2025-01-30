provider "aws" {
  region = "ap-south-1"
}

provider "vault" {
  address = "http://52.66.210.82/:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id = "c589c1d1-aaeb-ff08-67f5-cdbebec0572di"
      secret_id = "1273e5b1-a13b-bef0-fb05-6501ef009c5f"
    }
  }
}

data "vault_kv_secret_v2" "example" {
  mount = "secret" // change it according to your mount
  name  = "test-secret" // change it according to your secret
}

resource "aws_instance" "my_instance" {
  ami           = "ami-053b12d3152c0cc71"
  instance_type = "t2.micro"

  tags = {
    Name = "test"
    Secret = data.vault_kv_secret_v2.example.data["username"]
  }
}
