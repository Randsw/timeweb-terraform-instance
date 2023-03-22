output "wireguard-ip" {
  value = twc_server.wireguard-server.networks[0].ips[0].ip
}