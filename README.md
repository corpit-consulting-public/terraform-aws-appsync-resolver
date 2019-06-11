
# tf-aws-appsync-resolver

Terraform module that creates AppSync-Resolver resources in AWS

_Important!_
  _The following modules are necessary for the operation of AppSync Resolver:_
* _Appsync GraphQL Module_
* _AppSync Module DataSource_

## Resolver

GraphQL resolvers connect the fields in a type's schema to a data source. Resolvers are the mechanism by which requests are fulfilled. AWS AppSync can automatically create and connect resolvers from a schema or create a schema and connect resolvers from an existing table without you needing to write any code.
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
## README.md
This README file was created runnnign generate-readme.sh placed insinde hooks directory.
If you want to update README.md file, run that script while being in 'hooks' folder.
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| api\_id | The API ID for the GraphQL APi | string | n/a | yes |
| data\_source | The DataSource name | string | n/a | yes |
| field | The field name from the schema defined in the GraphQL API | string | n/a | yes |
| request\_template | The request mapping template for this resolver | string | n/a | yes |
| response\_template | The response mapping template for this resolver | string | n/a | yes |
| type | The type name from the schema defined in the GraphQL API | string | n/a | yes |

