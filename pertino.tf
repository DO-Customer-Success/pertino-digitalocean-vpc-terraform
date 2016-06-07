provider "digitalocean" {
  token = "${var.digitalocean_token}"
}

resource "digitalocean_droplet" "vpc_node" {
  name = "${format("${var.vpc_name}-node-%02d", count.index)}"
  count         = "${var.vpc_member_count}"
  image = "${var.image}"
  region = "${var.region}"
  size             = "${var.size}"
  ssh_keys = ["${var.ssh_key_fingerprint}"]
  user_data = "#cloud-config\n\nssh_authorized_keys:\n  - \"${file("${var.ssh_key_path}")}\"\n\nruncmd:\n- [ wget, \"http://download.pertino.com/clients/linux/530-7634/Pertino-530-7634.bashx\", -O, /root/Pertino-530-7634.bashx ]\n- chmod +x /root/Pertino-530-7634.bashx\n- /root/Pertino-530-7634.bashx\n- cd /opt/pertino/pgateway && ./.pauth -u \"${var.pertino_email}\" -p \"${var.pertino_password}\"\n- service pgateway start"
}
