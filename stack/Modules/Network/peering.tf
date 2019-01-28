data "aws_caller_identity" "peer" {
  provider = "aws.peer"
}

resource "aws_vpc_peering_connection" "peer" {
  vpc_id        = "${aws_vpc.main.id}"
  peer_vpc_id   = "${var.MANAGEMENT_VPC}"
  peer_owner_id = "${data.aws_caller_identity.peer.account_id}"
  peer_region   = "us-west-2"
  auto_accept   = false

  tags = {
    Side = "Requester"
  }
}

# Accepter's side of the connection.
resource "aws_vpc_peering_connection_accepter" "peer" {
  #provider                  = "aws.peer"
  vpc_peering_connection_id = "${aws_vpc_peering_connection.peer.id}"
  auto_accept               = true

  tags = {
    Side = "Accepter"
  }
}