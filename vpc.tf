resource "aws_vpc" "vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        "Name": "production-vpc"
    }
}

resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.vpc.id
    tags = {
        "Name": "internet-gateway"
    }    
}