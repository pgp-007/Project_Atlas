output "container_id" {
  description = "ID of the Docker container"
  value       = docker_container.nginx.id
}

output "image_id" {
  description = "ID of the Docker image"
  value       = docker_image.nginx.id
}

output "container_name" {
  description = "Name of the Docker container"
  value = docker_container.nginx.name
}
output "external_port" {
 description = "External port of the Docker Container"
 value = docker_container.nginx.ports[0].external
}
output "ip_address"{
 description = "IP address of the Docker Container"
 value = docker_container.nginx.network_data[0].ip_address
}
