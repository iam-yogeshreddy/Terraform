provider "aws" {
  region = "ap-south-1"
}

provider "vault" {
  address = "http://3.110.103.129:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id = "0b76ab42-699a-0f32-c458-b13e78cb0755"
      secret_id = "f21b7d17-d41c-80a4-7399-86115952b5f5"
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
