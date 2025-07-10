###cloud vars
variable "token" {
  type        = string
  default = "y0__xCpsamOqveAAhjB3RMg3s_d3hPP5-sEIN9CGYdfI5I7fJtfKlz05A"
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  default = "b1gc9i3ktd2ugd2chgic"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default = "b1g5dbnoftt3e8apt8ut"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}
variable "web_quantity" {
  type = number
  default = 2
  description = "web vm quantily"
}
variable "web_resources" {
  type = list(object({
    cores         = number
    memory        = number
    core_fraction = number
  }))
}
variable "vm_web_image" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "VM OS image"
}
variable "ssh_key" {
 type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDtknVluu+WTvWOrn21hZ29XVktyVbWRD4j7bBLIoiTh lolvzakone@gmail.com"
  description = "ssh-keygen -t ed25519"
}
variable "web_nat" {
  type        = bool
  default     = true
  description = "nat enable"
}
variable "web_platform" {
  type        = string
  default     = "standard-v3"
  description = "WM Platform"
}
variable "each_vm" {
  type = list(object({
    vm_name       = string
    cores         = number
    memory        = number
    disk_volume   = number
    core_fraction = number
  }))
}
variable "each_platform" {
  type        = string
  default     = "standard-v3"
  description = "WM Platform"
}
variable "each_nat" {
  type        = bool
  default     = true
  description = "nat enable"
}
variable "hdd_quantity" {
  type = number
  default = 3
  
}
variable "hdd_vol_size" {
  type = number
  default = 1
  
}
variable "storage_disk_type" {
  type        = string
  default     = "network-hdd"
 
}
variable "storage_resources" {
  type = list(object({
    cores         = number
    memory        = number
    core_fraction = number
  }))
}
variable "storage_nat" {
  type        = bool
  default     = true

}
variable "storage_platform" {
  type        = string
  default     = "standard-v3"
  description = "WM Platform"
}