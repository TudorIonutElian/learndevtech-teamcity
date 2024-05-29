resource "aws_ebs_volume" "teamcity_ebs_volume" {
  availability_zone = "eu-central-1a"
  size              = 40

  tags = {
    Name = "TeamCity EBS Volume"
  }
}

resource "aws_volume_attachment" "ebs_teamcity_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.teamcity_ebs_volume.id
  instance_id = aws_instance.team_city_instance.id
}