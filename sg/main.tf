terraform {
  required_version = ">= 1.5.0"

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

resource "random_pet" "demo" {
  length = 2
}

output "name" {
  value = random_pet.demo.id
}
