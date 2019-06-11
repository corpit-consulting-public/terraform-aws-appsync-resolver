## Usage
```hcl
module "appsync-resolver" {
  source            = "./modules/tf-aws-appsync-resolver"
  api_id            = "${module.graphql-api-CircularAppSync.id}"
  field             = "${var.field}"
  type              = "${var.type}"
  data_source       = "${module.datasource-messagesTableDataSource.name}"
  request_template  = "${var.request_template}"
  response_template = "${var.response_template}"

### it is recommended to consume "response_template" && "request_template" from a .json file each one for its correct functioning
```
