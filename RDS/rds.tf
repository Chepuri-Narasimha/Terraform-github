resource "aws_db_instance" "web_database" {
  allocated_storage           = 10
  storage_type                = "gp2"
  identifier                  = "mydb"
  db_name                     = "mydb"
  engine                      = "mysql"
  engine_version              = "8.0.35"
  instance_class              = "db.t3.micro"
  username                    = "admin"
  password = "admin12345"
  parameter_group_name        = "default.mysql5.7"
  skip_final_snapshot = true
  tags = {
    Name = "My DB"
  }

}

