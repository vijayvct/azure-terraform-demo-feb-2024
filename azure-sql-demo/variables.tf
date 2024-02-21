variable "region" {
  type = string
  default = "East US"
}

variable "resourcegroup" {
  type = string
  default = "my-sql-rg"
}

variable "servername" {
  type = string
  default = "vijaydbserver"
}

variable "dbname" {
  type=string
  default = "mytestdb"
}

variable "adminname" {
  type = string
  default = "vijay"
}

variable "password" {
  type = string
  default = "Password_123"
}