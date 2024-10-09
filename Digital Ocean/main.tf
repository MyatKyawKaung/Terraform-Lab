terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.42.0"
    }
  }
}
# Set the variable value in *.tfvars file
# or using -var="do_token=..." CLI option
variable "do_token" {}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.do_token
}

# Import a SSH Key
resource "digitalocean_ssh_key" "Web" {
  name       = "Terraform Example"
  public_key = file("${path.module}/id_rsa_mkk.pub")
}

# Create a new Web Droplet, Add SSH Public Key and Bash Script
resource "digitalocean_droplet" "LinuxWebserver" {
  image     = "ubuntu-22-04-x64"
  name      = "WebServer"
  region    = "SGP1"
  size      = "s-1vcpu-1gb"
  ssh_keys  = [digitalocean_ssh_key.Web.id]
  user_data = file("${path.module}/Script4WebServer.sh")
}

# Create a firewall for Web Server
resource "digitalocean_firewall" "LinuxWebserver" {
  name = "allow-22-80-and-443"

  droplet_ids = [digitalocean_droplet.LinuxWebserver.id]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = ["1.47.25.198"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "80"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "443"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol         = "icmp"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "udp"
    port_range            = "53"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "icmp"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}

