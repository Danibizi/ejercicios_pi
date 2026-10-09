# Muestra el nombre e IPs asignadas por DHCP en cada interfaz
output "ej3-server1" {
  value = {
    nombre = "ej3-server1"
    ip1    = try(libvirt_domain.ej3-server1.network_interface[0].addresses[0], "No disponible")
    ip2    = try(libvirt_domain.ej3-server1.network_interface[1].addresses[0], "No disponible")
    ip3    = try(libvirt_domain.ej3-server1.network_interface[2].addresses[0], "No disponible")
  }
}
