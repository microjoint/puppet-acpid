class acpid::params {

  $config_template          = 'acpid/handler.sh.erb'
  $service_ensure           = 'running'
  $service_enable           = true
  $service_manage           = true
  $package_ensure           = 'latest'
  $package_name             = 'acpid'

  case $::osfamily {
    'Archlinux': {
      $config         = '/etc/acpi/handler.sh'
      $config_dir     = '/etc/acpi/'
      $service_name   = 'acpid'
    }
    'Linux': {
      # for those distros that do not have $::osfamily
      case $::operatingsystem {
        default: {
          fail("This ${module_name} module is not supported on an ${::operatingsystem} distribution.")
        }
      }
    }
    default: {
      fail("This ${module_name} module is not supported on an ${::osfamily} based system.")
    }
  }
}
