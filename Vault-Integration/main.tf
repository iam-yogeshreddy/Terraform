provider "aws" {
  region = "ap-south-1"
}

provider "vault" {
  address = "http://13.201.73.244:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id = "ab8981ea-8aa9-d380-46ee-2248f2882519"
      secret_id = "95980b51-cc4b-8646-1451-73f62713b711"
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