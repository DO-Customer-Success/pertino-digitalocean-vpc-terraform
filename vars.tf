variable "digitalocean_token" {
  description = "Your DigitalOcean API key"
}

variable "ssh_key_fingerprint" {
  description = "Your SSH Public Key"
}

variable "ssh_key_path" {
  description = "path to your public key"
}

variable "region" {
  description = "DigitalOcean Region"
  default = "NYC2"
}

variable "size" {
  description = "Droplet Size"
  default = "4GB"
}

variable "image" {
  description = "DigitalOcean image slug"
  default = "ubuntu-16-04-x64"
}

variable "user_data" {
  description = "User Data file"
}

variable "pertino_email" {
  description = "Your Pertino email address/username."
}

variable "pertino_password" {
  description = "Your Pertino password."
}

variable "vpc_member_count" {
  description = "Number of nodes in your VPC."
}

variable "vpc_name" {
  description = "Name of your VPC group"
}
