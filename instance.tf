resource "aws_instance" "pivot_gocd_agent" {
  ami           = var.pub_ami
  instance_type = var.pubinstance_type
  key_name = var.instancekey_name
  subnet_id = var.subpubid
  vpc_security_group_ids = [ var.sg_id ]
  tags = {
    Name = "jumpbox"
  }
}

resource "aws_instance" "pvt" {
  ami           = var.pvt_ami
  instance_type = var.pvtinstance_type
  key_name = var.instancekey_name
  subnet_id = var.subpvtid1
  vpc_security_group_ids = [ var.sg_id ]
  tags = {
    Name = "pvtinstance"
  }
}
