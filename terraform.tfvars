web_platform = "standard-v3"
web_nat = false

web_resources = [
  {
    cores         = 2
    memory        = 2
    core_fraction = 20
  },
]
each_vm = [
    {
      vm_name     = "main"
      cores         = 4
      memory         = 4
      disk_volume = 10
      core_fraction = 50
    },
    {
      vm_name     = "replica"
      cores         = 2
      memory         = 2
      disk_volume = 5
      core_fraction = 20
    }
]
storage_platform = "standard-v3"
storage_disk_type = "network-hdd"
storage_nat = false

storage_resources = [
  {
    cores         = 2
    memory        = 2
    core_fraction = 20
  },
]