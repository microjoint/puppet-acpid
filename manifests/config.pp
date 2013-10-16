class acpid::config inherits acpid {

  file { $config:
    ensure  => file,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => template($config_template),
  }
  file { $config_dir:
    ensure  => file,
    owner   => root,
    group   => root,
    mode    => '0644',
  }
  file { "$config_dir/handlers":
    ensure  => directory,
    owner   => root,
    group   => root,
    mode    => '0644',
    recurse => true,
    #source  => "puppet:///modules/acpid/handlers",
  }
  file { "$config_dir/events":
    ensure  => directory,
    owner   => root,
    group   => root,
    mode    => '0644',
    recurse => true,
    #source  => "puppet:///modules/acpid/events",
  }
}
