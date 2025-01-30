provider "aws" {
  region = "ap-south-1"
}

provider "vault" {
  address = "http://3.111.33.82:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id = "1ecdaea6-e086-da1c-a2e4-6d5652311577"
      secret_id = "972bfe3a-a94c-30e9-0141-ac78b9ec0e11"
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

  tags = {
    Name = "test"
    Secret = data.vault_kv_secret_v2.example.data["username"]
  }
}