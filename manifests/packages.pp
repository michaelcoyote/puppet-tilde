class tilde::packages {

  package { ['tmux',
             'htop',
             'screen',
             'alpine',
             'emacs',
             'irssi',
             'mutt',
             'lynx',
             'tree',
             'finger',
             'cowsay']:

    ensure => present,

  }
	
  case $operatingsystem {
    centos, redhat: { $identd = "oidentd" }
    ubuntu, debian: { $identd = "oidentd" }
    default: { $identd = undef }
  }

  if $identd != undef {
    package { 'identd':
      name => $identd,
      ensure => present
    }
  }
}
