# output "ssh_connection_string_for_ec2" {
#   value = format("%s%s", "ssh -i ''", aws_instance.nginx_ec2_instance_ip.public_ip)
# }

output "nginx_ec2_instance_ip" {
  value = aws_instance.nginx_ec2_instance_ip.id
}

output "dev_proj_ec2_instance_public_ip" {
  value = aws_instance.nginx_ec2_instance_ip.public_ip
}