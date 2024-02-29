resource "aws_lightsail_instance" "terraform-Server" {
  name              = "terraform-code"
  availability_zone = "us-east-1a" # Change the availability zone if needed
  blueprint_id      = "centos_7_2009_01"
  bundle_id         = "nano_2_0"

  user_data = "sudo yum install -y httpd && sudo yum install unzip wget httpd -y && sudo wget https://github.com/utrains/static-resume/archive/refs/heads/main.zip && sudo unzip main.zip && sudo cp -r static-resume-main/* /var/www/html/  && sudo systemctl start httpd && sudo systemctl enable httpd"
    
              

  tags = {
    env = "dev"
  }
}