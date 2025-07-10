resource "yandex_compute_disk" "storage_disk" {
count = var.hdd_quantity
  name  = "storage-disk-${count.index + 1}"
  size  = var.hdd_vol_size  
  type  = var.storage_disk_type 
  
}
resource "yandex_compute_instance" "storage" {
  name = "storage"
  platform_id = var.storage_platform
  
  resources {
    cores  = var.storage_resources[0].cores
    memory = var.storage_resources[0].memory
    core_fraction = var.storage_resources[0].core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    security_group_ids = [yandex_vpc_security_group.example.id]
    nat       = var.storage_nat
  }
  dynamic "secondary_disk" {
    for_each = yandex_compute_disk.storage_disk[*]

    content {
      disk_id = secondary_disk.value.id
    }
  }

  metadata = {
    ssh-keys = var.ssh_key
  }
}