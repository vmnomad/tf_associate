provider "aws"{
    region = "ap-southeast-2"
}


resource "aws_eip" "public_ip" {
    vpc = true
}

output "eip" {
    value = aws_eip.public_ip.public_ip
}