variable "source" {
    type = string
    default = "hashicorp/google"
}
variable "version" {
    type = string
    default = "3.5.0"
}

variable "region" {
    type = string
    default = "asia-south1"
}
variable "project" {
    type = string
 default = "mylearning-331213"
}
variable "zone" {
    type = string
    default = "asia-south1-a"
}

variable "user" {
    type = string
}

variable "email" {
    type = string
}
variable "privatekeypath" {
    type = string
    default = "~/.ssh/id_rsa"
}

variable "publickeypath" {
    type = string
    default = "~/.ssh/id_rsa.pub"
}
variable "name " {
    type = string
    default = "terraforminstance1"
}
variable "machine_type" {
    type = string
    default = "e2-medium"
}
variable "network" {
    type = string
    default = "mylearning-vpc1"
}
variable "subnetwork" {
    type = string
    default = "subnet1"
}