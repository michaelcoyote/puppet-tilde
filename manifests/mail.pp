class tilde::mail {

  class {'postfix':
    inet_interfaces => 'localhost',
  }

  postfix::config { 'default_transport':
    value => 'uucp',
    'disable_dns_lookups': 
    value => 'yes'
  }
}
