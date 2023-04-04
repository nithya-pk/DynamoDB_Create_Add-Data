resource "aws_dynamodb_table" "nk_dyndb_table" {
 name = "nk_dyndb_table"
 billing_mode = "PROVISIONED"
 read_capacity = "30"
 write_capacity = "30"
 attribute {
  name = "EmployeeID"
  type = "S"
 }
 hash_key = "EmployeeID"
 ttl {
  enabled = true 
  attribute_name = "expiryPeriod" 
 }
 lifecycle {
  ignore_changes = [write_capacity, read_capacity]
 }
 provisioner "local-exec" {
 command = "bash populate.sh"
 }
 tags = {Name= "nk_dyndb_table"}
}

# module "table_autoscaling" {
#  source = "snowplow-devops/dynamodb-autoscaling/aws" // add the autoscaling module
#  table_name = "${aws_dynamodb_table.nk_dyndb_table.name}"
# }
