#acpid

####Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with acpid](#setup)
    * [What acpid affects](#what-acpid-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with acpid](#beginning-with-acpid)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

##Overview

The acpid module installs, configures, and manages the acpid service.

##Module Description

The acpid module handles running acpid mainly on Arch Linux. Were possible I have added other distributions where known.

##Setup

###What acpid affects

* acpid package.
* acpid configuration file.
* acpid service.

###Beginning with acpid

include '::acpid' is enough to get you up and running.  If you wish to pass in
parameters like if the service should be running, use:

```puppet
class { '::acpid':
  service_ensure => true,
}
```

##Usage

All interaction with the acpid module can do be done through the main acpid class.
This means you can simply toggle the options in the acpid class to get at the
full functionality.

###I just want acpid, what's the minimum I need?

```puppet
include '::acpid'
```

###I want to enable the service on startup.

```puppet
class { '::acpid':
  service_enable => true,
}
```

###I'd like to install a different package name as well.

```puppet
class { '::acpid':
  service_enable  => true,
  package_name    => 'acpid-beta',
}
```

###I'd like to opt out of having the service controlled, we use another tool for that.

```puppet
class { '::acpid':
  service_enable  => true,
  package_name    => 'acpid-beta',
  manage_service => false,
}
```

##Reference

###Classes

* acpid: Main class, includes all the rest.
* acpid::install: Handles the packages.
* acpid::config: Handles the configuration file.
* acpid::service: Handles the service.

###Parameters

The following parameters are available in the acpid module

####`config`

This sets the file to write acpid configuration into.

####`config_file`

This determines which file puppet should use for the acpid configuration.

####`package_ensure`

This can be set to 'present' or 'latest' or a specific version to choose the
acpid package to be installed.

####`package_name`

This determines the name of the package to install.

####`service_enable`

This determines if the service should be enabled at boot.

####`service_ensure`

This determines if the service should be running or not.

####`service_manage`

This selects if puppet should manage the service in the first place.

####`service_name`

This selects the name of the acpid service for puppet to manage.


##Limitations

This module has been built on and tested against Puppet 3.3 and higher.

The module has been tested on:

* Arch Linux

Testing on other platforms has been light and cannot be guaranteed. 
