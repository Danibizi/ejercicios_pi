# Red NAT con DHCP: proporciona conectividad exterior a las VMs
resource "libvirt_network" "ej3-nat-dhcp" {
  name      = "ej3-nat-dhcp"
  mode      = "nat"
  domain    = "example.com"
  addresses = ["192.168.100.0/24"]
  dhcp { enabled = true }
  dns { enabled = true }
  autostart = true
}
resource "libvirt_network" "ej3-nat-dhcp2" {
  name      = "ej3-nat-dhcp2"
  mode      = "nat"
  domain    = "example2.com"
  addresses = ["192.168.110.0/24"]
  dhcp { enabled = true }
  dns { enabled = true }
  autostart = true
}
