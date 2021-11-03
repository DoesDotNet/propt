variable "environment" {
  type = string
}

variable "project" {
  type    = string
  default = "propt"
}

variable "system" {
  type    = string
  default = "global"
}

variable "gh-organisation" {
  type    = string
  default = "DoesDotNet"
}

variable "gh-token" {
  type = string
}