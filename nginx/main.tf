resource "aws_instance" "nginx_ec2_instance_ip" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = var.tag_name
  }
  key_name                    = "aws_ec2_terraform"
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.sg_for_nginx
  associate_public_ip_address = var.enable_public_ip_address

  user_data = var.user_data_install_nginx

  metadata_options {
    http_endpoint = "enabled"  # Enable the IMDSv2 endpoint
    http_tokens   = "required" # Require the use of IMDSv2 tokens
  }
}

resource "aws_key_pair" "nginx_ec2_instance_public_key" {
  key_name   = "aws_ec2_terraform"
  public_key = var.public_key
}