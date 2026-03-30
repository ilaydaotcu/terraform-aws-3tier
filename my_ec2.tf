#create a ec2 instance in the public subnet
resource "aws_instance" "app_server" {
  count                       = 2
  ami                         = "ami-0c94855ba95c71c99"
  instance_type               = "t2.micro"
  subnet_id                   = [aws_subnet.public_1.id, aws_subnet.public_2.id][count.index]
  vpc_security_group_ids      = [aws_security_group.ec2_sg.id]
  associate_public_ip_address = true

  tags = {
    Name = "solar-app-instance-${count.index + 1}"
  }
}
