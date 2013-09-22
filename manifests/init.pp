class acpid (
  $config           = $acpid::params::config,
  $config_template  = $acpid::params::config_template,

) inherits acpid::params {

  #validate_absolute_path($config)

  include '::acpid::install'
  include '::acpid::config'
  include '::acpid::service'

  Class['::acpid::install'] -> Class['::acpid::config'] ~> Class['::acpid::service']

}
