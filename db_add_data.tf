# resource "aws_dynamodb_table_item" "item1" {
#  table_name = "${aws_dynamodb_table.nk_dyndb_table.name}"
#  hash_key   = "${aws_dynamodb_table.nk_dyndb_table.hash_key}"

#  item = <<ITEM
#  {
#   "EmployeeID": { "S": "M123456"},
#   "Name": {"S" : "Some_Name"},
#   "Department": {"S" : "Accounting"},
#   "Location": {"S": "Munich"}
#  }
#  ITEM
# }

# resource "aws_dynamodb_table_item" "item2" {
#  table_name = "${aws_dynamodb_table.nk_dyndb_table.name}"
#  hash_key   = "${aws_dynamodb_table.nk_dyndb_table.hash_key}"

#  item = <<ITEM
#  {
#   "EmployeeID": { "S": "F123456"},
#   "Name": {"S" : "Some_Other_Name"},
#   "Department": {"S" : "Sales"},
#   "Location": {"S": "Frankfurt"}
#  }
#  ITEM
# }

