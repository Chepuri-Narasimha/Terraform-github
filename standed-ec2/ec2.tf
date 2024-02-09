resource "aws_instance" "web" {
  ami           = data.aws_ami.ami_linux2.id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}