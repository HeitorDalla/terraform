output "vm_name" {
    value = google_compute_instance.flask_app_1.name
}

output "vn_internal_ip" {
    description = "IP interno da VM"
    value = google_compute_instance.flask_app_1.network_interface[0].network_ip
}

output "vm_external_ip" {
    description = "IP externo da VM"
    value = google_compute_instance.flask_app_1.network_interface[0].access_config[0].nat_ip
}