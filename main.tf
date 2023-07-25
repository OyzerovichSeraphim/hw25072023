terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = "0.60.0"
    }
  }
}

provider "yandex" {
  token = "<�������_����>"
  folder_id = "<�������_����>"
  cloud_di = "<�������_����>"
  zone = "ru-central1-a"
}

resource "yandex_compute_instance" "vm1" { 
  name = "vm01"
  platform_id = "standard-v1"
  resources {
    core_fraction = 5
    cores  = 2
    memory = 1
  }
  boot_disk {
    initialize_params {
      image_id = "fd8v0s6adqu3ui3rsuap"
    }
  }
}

resource "yandex_compute_instance" "vm2" { 
  name = "vm02"
  platform_id = "standard-v1"
  resources {
    core_fraction = 5
    cores  = 2
    memory = 1
  }
  boot_disk {
    initialize_params {
      image_id = "fd8v0s6adqu3ui3rsuap"
    }
  }
}