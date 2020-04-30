resource "aws_vpc" "main" {
  cidr_block = "${var.vpc_cidr}"
  tags = {
    Name = "Team Infrastructure"
    Environment = "Development" 
    Created_by = "Tuba Loughlin"
  }
}

# Private subnets
########################################################################################################################
resource "aws_subnet" "private1" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.private1_cidr}"
    tags = {
      Name = "private subnet1 "
      Environment = "Development"
  }
}
resource "aws_subnet" "private2" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.private2_cidr}"
    tags = {
      Name = "private subnet 2"
      Environment = "Development"
  }
}
resource "aws_subnet" "private3" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.private3_cidr}"
    tags = {
      Name = "pravite subnet 3"
      Environment = "Development"
  }
}
########################################################################################################################


# Public Subnet
########################################################################################################################
resource "aws_subnet" "public1" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.public1_cidr}"
      tags = {
         Name = "public subnet 1"
         Environment = "Development"
  }
}
resource "aws_subnet" "public2" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.public2_cidr}"
      tags = {
    Name = "public subnet 2"
    Environment = "Development"
  }
}
resource "aws_subnet" "public3" {
    vpc_id     = "${aws_vpc.main.id}"
    cidr_block = "${var.public3_cidr}"
    tags = {
      Name = "public subnet 3"
      Environment = "Development"
  }
}
########################################################################################################################


# resource "aws_nat_gateway" "gw" {
#   allocation_id = "${aws_eip.nat.id}"
#   subnet_id     = "${aws_subnet.public[1].id}"
# }

resource "aws_eip" "nat" {
  vpc      = true
}

resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.main.id}"
  tags = {
    Name = "internet gateway"
    Team = "Infrastructure"
  }
}
resource "aws_nat_gateway" "gw" {
  allocation_id = "${aws_eip.nat.id}"
  subnet_id     = "${aws_subnet.public1.id}"
  tags = {
    Name = "nat gateway"
    Team = "Infrastructure"
  }
}

resource "aws_route_table" "r" {
  vpc_id = "${aws_vpc.main.id}"

  route {
    cidr_block = "${var.route_table_cidr}"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
  tags = {
    Name = "route table igw"
    Team = "Infrastructure"
  }
}

resource "aws_route_table" "n" {
  vpc_id = "${aws_vpc.main.id}"

  route {
    cidr_block = "${var.route_table_cidr}"
    gateway_id = "${aws_nat_gateway.gw.id}"
  }
  tags = {
    Name = "route table ngw"
    Team = "Infrastructure"
  }
}

# Route Table association
resource "aws_route_table_association" "b1" {
  subnet_id      = "${aws_subnet.public1.id}"
  route_table_id = "${aws_route_table.r.id}"
}

resource "aws_route_table_association" "b2" {
  subnet_id      = "${aws_subnet.public2.id}"
  route_table_id = "${aws_route_table.r.id}"
}

resource "aws_route_table_association" "b3" {
  subnet_id      = "${aws_subnet.public3.id}"
  route_table_id = "${aws_route_table.r.id}"
}

resource "aws_route_table_association" "p1" {
  subnet_id      = "${aws_subnet.private1.id}"
  route_table_id = "${aws_route_table.n.id}"
}

resource "aws_route_table_association" "p2" {
  subnet_id      = "${aws_subnet.private2.id}"
  route_table_id = "${aws_route_table.n.id}"
}

resource "aws_route_table_association" "p3" {
  subnet_id      = "${aws_subnet.private3.id}"
  route_table_id = "${aws_route_table.n.id}"
}