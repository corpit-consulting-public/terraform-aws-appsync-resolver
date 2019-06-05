###Variables for AppSync Resolver

variable "api_id" {
  type        = "string"
  description = "The API ID for the GraphQL APi"
  default     = ""
}

variable "type" {
  type        = "string"
  description = "The type name from the schema defined in the GraphQL API"
  default     = ""
}

variable "field" {
  type        = "string"
  description = "The field name from the schema defined in the GraphQL API"
  default     = ""
}

variable "data_source" {
  type        = "string"
  description = "The DataSource name"
  default     = ""
}

variable "request_template" {
  type        = "string"
  description = "The request mapping template for this resolver"
  default     = ""
}

variable "response_template" {
  type        = "string"
  description = "The response mapping template for this resolver"
  default     = ""
}
