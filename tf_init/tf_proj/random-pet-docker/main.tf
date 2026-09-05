terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "4.6.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.9.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "ubuntu" {
  name = "ubuntu:latest"
}

resource "random_pet" "namer" {}

resource "docker_container" "foo" {
  image = docker_image.ubuntu.image_id
  name  = random_pet.namer.id
  must_run = "true"
  stdin_open = "true"
  tty="true"
}
