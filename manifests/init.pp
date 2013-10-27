class acpid (
  $config           = $acpid::params::config,
  $config_template  = $acpid::params::config_template,
  $config_actions   = $acpid::params::config_actions,
  $config_events    = $acpid::params::config_events,
  $config_handlers  = $acpid::params::config_handlers,
  $package_ensure   = $acpid::params::package_ensure,
  $package_name     = $acpid::params::package_name,
  $service_ensure   = $acpid::params::service_ensure,
  $service_enable   = $acpid::params::service_enable,
) inherits acpid::params {

  validate_absolute_path($config)
  validate_string($config_template)
  validate_string($config_actions)
  validate_string($config_events)
  validate_string($config_handlers)
  validate_string($package_ensure)
  validate_string($package_name)
  validate_string($service_ensure)
  validate_bool($service_enable)

  include '::acpid::install'
  include '::acpid::config'
  include '::acpid::service'

  Class['::acpid::install'] -> Class['::acpid::config'] ~> Class['::acpid::service']

}
