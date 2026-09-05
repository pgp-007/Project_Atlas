provider "aws" {
  region = "ap-south-1"
}

provider "random" {}

resource "random_pet" "name" {}

resource "aws_instance" "web" {
  ami           = "ami-01a00762f46d584a1"
  instance_type = "t3.micro"
  user_data     = file("init-script.sh")

  tags = {
    Name = random_pet.name.id
  }
}
