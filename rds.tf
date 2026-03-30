#create an RDS instance in the private subnet
resource "aws_db_instance" "solar_db" {
  allocated_storage = 20
  engine            = "mysql"
  engine_version    = "8.0"
  instance_class    = "db.t2.micro"


  db_name  = "solar_db"
  username = "admin"
  password = "password123"

  publicly_accessible = false
  skip_final_snapshot = true

  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  db_subnet_group_name   = aws_db_subnet_group.solar_db_subnet_group.name

  tags = {
    Name = "solar-db-instance"
  }



}