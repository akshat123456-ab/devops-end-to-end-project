terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_network" "devops_network" {
  name = "devops-network"
}

resource "docker_container" "elasticsearch" {
  name  = "elasticsearch"
  image = "docker.elastic.co/elasticsearch/elasticsearch:8.11.1"

  networks_advanced {
    name = docker_network.devops_network.name
  }

  env = [
    "discovery.type=single-node"
  ]

  ports {
    internal = 9200
    external = 9200
  }
}

resource "docker_container" "kibana" {
  name  = "kibana"
  image = "docker.elastic.co/kibana/kibana:8.11.1"

  networks_advanced {
    name = docker_network.devops_network.name
  }

  ports {
    internal = 5601
    external = 5601
  }
}
