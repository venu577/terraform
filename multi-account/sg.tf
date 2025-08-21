resource "aws_security_group" "allow_all" {
  name        = "allow-all"
  description = "allowing all ports from internet" 

  ingress {

     from_port        = 0
     to_port          = 0
     protocol         = "-1"
     cidr_blocks      = ["0.0.0.0/0"]
     ipv6_cidr_blocks = ["::/0"]
   
  }
  egress {
     
     from_port        = 0
     to_port          = 0    #Using "-1" for protocol allows all protocols
     protocol         = "-1"
     cidr_blocks      = ["0.0.0.0/0"]
     ipv6_cidr_blocks = ["::/0"]

  }
  
  tags =  {
    Name = "allow-all-dev"
  }

  provider = aws.dev
}

resource "aws_security_group" "allow_all" {
  name        = "allow-all"
  description = "allowing all ports from internet" 

  ingress {

     from_port        = 0
     to_port          = 0
     protocol         = "-1"
     cidr_blocks      = ["0.0.0.0/0"]
     ipv6_cidr_blocks = ["::/0"]
   
  }
  egress {
     
     from_port        = 0
     to_port          = 0    #Using "-1" for protocol allows all protocols
     protocol         = "-1"
     cidr_blocks      = ["0.0.0.0/0"]
     ipv6_cidr_blocks = ["::/0"]

  }
  
  tags =  {
    Name = "allow-all-prod"
  }

  provider = aws.prod
}