# tf-aws-appsync-resolver

Terraform module that creates AppSync-Resolver resources in AWS

_Important!_
  _The following modules are necessary for the operation of AppSync Resolver:_
* _Appsync GraphQL Module_
* _AppSync Module DataSource_

## Resolver

GraphQL resolvers connect the fields in a type's schema to a data source. Resolvers are the mechanism by which requests are fulfilled. AWS AppSync can automatically create and connect resolvers from a schema or create a schema and connect resolvers from an existing table without you needing to write any code.
