/**********************************************************
  # Create Ec2 Instance called teamcity 
**********************************************************/
resource "aws_instance" "team_city_instance" {
  ami           = var.ami_id
  instance_type = var.teamcity_instance_type
  key_name      = aws_key_pair.teamcity_key.key_name
  count         = var.teamcity_instance_count
}