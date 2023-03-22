data "sops_file" "secret" {
  source_file = "timeweb-token.enc.yaml"
}

provider "twc" {
  token = data.sops_file.secret.data["token"]
}