provider "aws" {
  region = "ap-south-1"
}

provider "vault" {
  address = "http://43.205.146.12:8200"

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id   = "c5be6ef2-6ef3-5258-b815-f26252afe90e"
      secret_id = "c90a2820-4641-2e50-024f-f7cd2e3005a9"
    }
  }
}

data "vault_kv_secret_v2" "example" {
  mount = "kv"  # Change it according to your mount path
  name  = "test-secret"  # Change it according to your secret
}

resource "aws_instance" "my_instance" {
  ami           = "ami-053b12d3152c0cc71"
  instance_type = "t2.micro"

  tags = {
    Name   = "test"
    Secret = data.vault_kv_secret_v2.example.data["username"]
  }
}
