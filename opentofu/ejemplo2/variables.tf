# Pool de almacenamiento donde se crean los volúmenes (disco y cloud-init)
variable "libvirt_pool_name" {
  type        = string
  description = "Nombre del pool de almacenamiento libvirt."
  default     = "default"
}

# Imagen base en formato qcow2 ya disponible en el pool
# Se usa como backing store para el clon ligero
variable "base_image" {
  type        = string
  description = "Nombre de la imagen base en el pool."
  default     = "ubuntu2604-base.qcow2"
}
