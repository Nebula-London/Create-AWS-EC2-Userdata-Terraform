provider "aws" {
  region = "REGION"
  access_key = "YOUR_ACCESS_KEY"
  secret_key = "YOUR_SECRET_KEY"
}

resource "aws_instance" "myec2" {
  ami = "ami-04706e771f950937f"
  instance_type = "t2.micro"
  user_data = "${file("Userdata for apache.txt")}"
}