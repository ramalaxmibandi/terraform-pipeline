 #instance.tf
resource "aws_instance" "mastert" {
  ami           = "ami-0ff1c68c6e837b183"
  instance_type = "t2.micro"
  count         = 1
  tags = {
    Name = "mastert"
  }
}

resource "aws_instance" "workert" {
  ami           = "ami-0ff1c68c6e837b183"
  instance_type = "t2.micro"
  count         = 2
  tags = {
    Name = "workert-${count.index + 1}"
  }
}
