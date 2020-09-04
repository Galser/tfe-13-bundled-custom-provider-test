terraform {
required_providers {
azurerm = {
version = "=1.39.0"
source = "hashicorp/azurerm"
}
corepipeline = {
version = "=1.0.0"
source = "mtc.com/api/corepipeline"
}
}
}
provider azurerm {
features {}
}

provider corepipeline {
hostname = "test1.something.mtcc.com"
}

resource "null_resource" "example1" {
provisioner "local-exec" {
command = "sleep 500000"
}
}

resource "null_resource" "example2" {
provisioner "local-exec" {
command = "ls"
}
}

resource "null_resource" "example3" {
provisioner "local-exec" {
command = "pwd"
}
}
