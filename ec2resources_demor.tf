resource "aws_instance" "myec2" {
  ami           = "ami-0022f774911c1d690" 
  instance_type = "t2.micro"
  tags = {
    Name = "instance1"
  }
}

resource "aws_eip" "myeip" {
  vpc = true

}

resource "aws_s3_bucket" "awsb1" {
  bucket = "aws-tags59-test-bucket"


  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

output "instance_ip_addr" {
  value = aws_instance.myec2.public_ip
}
