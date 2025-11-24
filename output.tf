output "vpc_id" {
  value = aws_vpc.myvpc.id
}

output "instance_id" {
  value = aws_instance.myvm.id
}
output "subnet1" {
  value = aws_subnet.suba.arn
}
output "subnet2" {
  value = aws_subnet.subb.arn
}
output "internet_gateway" {
  value = aws_internet_gateway.myigw.id
}
output "route_table" {
  value = aws_route_table.pubrt.id
}