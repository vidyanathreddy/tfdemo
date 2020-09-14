resource "aws_instance" "wp_ubuntu" {
  ami                    = "ami-0b44582c8c5b24a49"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.for_public.id}"]
  subnet_id              = aws_subnet.subnet1.id
  key_name               = "test"

  associate_public_ip_address = true
  ebs_block_device {
    device_name = "/dev/xvdb"
    volume_type = "gp2"
    volume_size = 8
  }
  tags = {
    Name        = "ub-wordpress"
    Environment = "test"
    Project     = "test-proj"
  }

  provisioner "file" {
    source      = "./install.sh"
    destination = "/home/ubuntu/install.sh"
  }
  provisioner "remote-exec" {
    inline = [
      "sudo chmod +x /home/ubuntu/install.sh",
      "sudo sh /home/ubuntu/install.sh",
    ]
  }
  connection {
    type        = "ssh"
    user        = "ubuntu"
    password    = ""
    private_key = file("./test.pem")
    host        = self.public_ip
  }

}