class tilde::identd {

  case $operatingsystem {
    centos, redhat: {
      $identd_package = "oidentd"
      $identd_service = "oidentd"
    }
    ubuntu, debian: {
      $identd_package = "oidentd"
      $identd_service = "oidentd"
    }
    FreeBSD: {
      $identd_package = "security/oidentd"
      $identd_service = "oidentd"
    }
    default: { $identd_package = undef }
  }

  if $identd_package != undef {
    package { 'identd':
      name => $identd_package,
      ensure => present
    }
    service { 'identd':
      name => $identd_service,
      ensure => 'running',
      enable => true
    }
  }

}