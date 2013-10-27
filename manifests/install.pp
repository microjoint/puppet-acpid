class acpid::install inherits acpid {
  package { 'acpid':
    ensure => $package_ensure,
    name   => $package_name,
  }
}
