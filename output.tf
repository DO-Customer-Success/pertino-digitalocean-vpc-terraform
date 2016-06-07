output "VPC IPs" {
  value = "${join("\n\n", digitalocean_droplet.vpc_node.*.ipv4_address)}"
}
