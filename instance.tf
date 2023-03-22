data "twc_os" "wg-os" {
  name    = "ubuntu"
  version = var.ubuntu_version
}

data "twc_presets" "wg-preset" {
  location  = var.instance_location
  disk_type = "nvme"
  cpu       = var.instance_cpu
  ram       = var.instance_memory

  price_filter {
    from = 300
    to   = 400
  }
}

data "twc_projects" "wg-project" {
  name = "Общий проект"
}

data "twc_ssh_keys" "wg-ssh-keys" {
  name = "timeweb"
}

resource "twc_server" "wireguard-server" {
  name  = "Wireguard server"
  os_id = data.twc_os.wg-os.id

  preset_id = data.twc_presets.wg-preset.id

  ssh_keys_ids = [data.twc_ssh_keys.wg-ssh-keys.id]
}