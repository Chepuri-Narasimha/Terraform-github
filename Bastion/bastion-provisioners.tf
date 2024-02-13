/*
resource "null_resource" "copy_ec2_keys" {
  depends_on = [module.ec2_public]
  connection {
    type = "ssh"
    host = aws_eip.bastion_eip.public_ip    
    user = "ec2-user"
    password = ""
    private_key = file("../Jenkins-server.pem")
  }
  provisioner "file" {
    source = "../Jenkins-server.pem"
    destination = "/tmp/Jenkins-server.pem"
  }
  provisioner "remote-exec" {
    inline = [ 
        "sudo chmod 400 /tmp/Jenkins-server.pem"
     ]
    
  }
  provisioner "local-exec" {
    command = "echo VPC created `date` and VPC ID : ${module.vpc.vpc_id} >> vpc_id.txt"
    working_dir = "../"
    
  }
}

*/