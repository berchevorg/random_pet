terraform {
  backend "remote" {
    organization = "berchevorg"

    workspaces {
      name = "random_pet"
    }
  }
}

resource "random_pet" "name" {
  length    = "101"
  separator = "-"
}

output "out" {
  value = "${random_pet.name.id}"
}
