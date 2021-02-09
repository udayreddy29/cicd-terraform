resource "aws_subnet" "subnet_1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "public_subnet_1"
  }
}

resource "aws_subnet" "subnet_2" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "public_subnet_2"
  }
}

resource "aws_route_table" "route_table_1" {
    vpc_id = aws_vpc.vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }
    route {
        ipv6_cidr_block = "::/0"
        gateway_id = aws_internet_gateway.igw.id
    }
    tags = {
        "Name": "route_table"
    }
}

resource "aws_route_table" "route_table_2" {
    vpc_id = aws_vpc.vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }
    route {
        ipv6_cidr_block = "::/0"
        gateway_id = aws_internet_gateway.igw.id
    }
    tags = {
        "Name": "route_table_2"
    }
}

resource "aws_route_table_association" "route_table_association_1" {
    subnet_id = aws_subnet.subnet_1.id
    route_table_id = aws_route_table.route_table_1.id
}

resource "aws_route_table_association" "route_table_association_2" {
    subnet_id = aws_subnet.subnet_2.id
    route_table_id = aws_route_table.route_table_2.id
}