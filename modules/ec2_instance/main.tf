data "aws_ami" "amazon-2" {
  most_recent = true

  filter {
    name = "name"
    values = ["amzn2-ami-hvm-*-x86_64-ebs"]
  }
  owners = ["amazon"]
}


resource "aws_instance" "example" {
  ami           = data.aws_ami.amazon-2.id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  vpc_security_group_ids = [var.vpc_security_group_id]

  tags = {
    Name = "Test Instance"
  }
}
