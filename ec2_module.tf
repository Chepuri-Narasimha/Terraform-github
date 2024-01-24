resource "aws_instance" "myec2" {
  ami           = "ami-06489866022e12a14"
  key_name      = "Provisioner-key"
  instance_type = var.instance_type
}
#updated from browser
#tesing staging
