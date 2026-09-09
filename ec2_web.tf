resource "aws_instance" "lamp_Stack" {
  ami           = data.aws_ami.puti_juice_ami.id
  instance_type = "t2.micro"
  key_name      = var.key_pair

  tags = {
    Name = "Puti_server"
    Env  = "Development"
  }
}