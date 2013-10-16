class acpid (
  $config           = $acpid::params::config,
  $config_template  = $acpid::params::config_template,
  $config_handlers  = $acpid::params::config_handlers,
  $config_events    = $acpid::params::config_events,
  $package_ensure   = $acpid::params::package_ensure,
  $package_name     = $acpid::params::package_name,
  $service_ensure   = $acpid::params::service_ensure,
  $service_enable   = $acpid::params::service_enable,
) inherits acpid::params {

  validate_absolute_path($config)

  include '::acpid::install'
  include '::acpid::config'
  include '::acpid::service'

  Class['::acpid::install'] -> Class['::acpid::config'] ~> Class['::acpid::service']

}
