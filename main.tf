resource "aws_appsync_resolver" "test" {
  api_id      = "${var.api_id}"
  field       = "${var.field}"
  type        = "${var.type}"
  data_source = "${var.data_source}"
  request_template = "${var.request_template}"
  response_template = "${var.response_template}"
}
