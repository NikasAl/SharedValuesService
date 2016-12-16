exec {
  "apt-get update":
  path => "/usr/bin"
}

class { "tomcat": }

