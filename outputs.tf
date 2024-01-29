
output "lb_ip" {
  value = yandex_vpc_address.custom_addr.external_ipv4_address[0].address
}

output "admin_ip" {
  value = yandex_compute_instance.admin.network_interface.0.nat_ip_address
}
output "opensearch_dashboard_ip" {
  value = yandex_compute_instance.opensearch_dashboard.network_interface.0.nat_ip_address
}

output "database_ips" {
  value = yandex_compute_instance.database[*].network_interface.0.ip_address
}

output "nginx_ips" {
  value = yandex_compute_instance.nginx[*].network_interface.0.ip_address
}

output "backend_ips" {
  value = yandex_compute_instance.backend[*].network_interface.0.ip_address
}

output "opensearch_ips" {
  value = yandex_compute_instance.opensearch[*].network_interface.0.ip_address
}

output "kafka_ip" {
  value = yandex_compute_instance.kafka.network_interface.0.ip_address
}
