class acpid::config inherits acpid {

  file { $config:
    ensure  => file,
    owner   => root,
    group   => root,
    mode    => '0644',
    source  => "puppet:///$config_file",
  }
  file { $config_dir:
    ensure  => file,
    owner   => root,
    group   => root,
    mode    => '0644',
  }
  file { "$config_dir/actions":
    ensure  => directory,
    owner   => root,
    group   => root,
    mode    => '0644',
    recurse => true,
    source  => "puppet:///$config_actions",
  }
  file { "$config_dir/events":
    ensure  => directory,
    owner   => root,
    group   => root,
    mode    => '0644',
    recurse => true,
    source  => "puppet:///$config_events",
  }
  file { "$config_dir/handlers":
    ensure  => directory,
    owner   => root,
    group   => root,
    mode    => '0644',
    recurse => true,
    source  => "puppet:///$config_handlers",
  }
}
