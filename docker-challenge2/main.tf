terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
    host = "unix:///var/run/docker.sock"
}

resource "docker_image" "simplegoservice" {
    name         = "registry.gitlab.com/alta3/simplegoservice"
}

resource "docker_container" "simplegoservice" {
  image = docker_image.simplegoservice.image_id
  name = var.container_name
  ports {
    internal = var.internal_port
    external = var.external_port
  }
}
