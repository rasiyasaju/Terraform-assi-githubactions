resource "aws_s3_bucket" "demo_bucket" {
  bucket = "github-actions-rasdemo-bucket-2026"
   force_destroy = true

  tags = {
    Name = "GitHubActionsBucket"
  }
}

resource "aws_instance" "demo_ec2" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t3.micro"

  tags = {
    Name = "GitHubActionsEC2"
  }
}