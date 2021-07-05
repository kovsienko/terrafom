resource "aws_instance" "Ubuntu" {
  ami = "ami-00399ec92321828f5"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.Ubuntu.id, "sg-08ae36c722849250f"]
  key_name  = "kovsienko-key"
  user_data = templatefile("user_data.sh.tpl", {
     f_name = "Kosty"
     l_name = "Ovsienko"
     name = ["Vasy", "Koly", "John", "Donal", "Masha"]
     })

  }