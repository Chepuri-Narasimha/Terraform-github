data "aws_availability_zones" "az_list" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}

output "az_details" {
    value = data.aws_availability_zones.az_list
}
