# set up and define a tilde::uucp object
# and fill it with necessary info
#define tilde::uucp {
    $uucphosts    =  ["uuhost1","uuhost2"]
    #$uucpfqdn    =  ["uuhost1","uuhost2"]
    # uucp sys file
    file    { "uucp-sys":
    path    =>  "/etc/uucp/sys",
    ensure  =>  present,
    owner   =>  'root',
    group   =>  'uucp',
    mode    =>  '0640',
    content =>  template('uucp/sys.erb')
    }
    
    # uucp port file
    file    { "uucp-port":
    path    =>  "/etc/uucp/port",
    ensure  =>  present,
    owner   =>  'root',
    group   =>  'uucp',
    mode    =>  '0640',
    content =>  template('uucp/port.erb')
    }

    # uucp call file
    file    { "uucp-call":
    path    =>  "/etc/uucp/call",
    ensure  =>  present,
    owner   =>  'uucp',
    group   =>  'uucp',
    mode    =>  '0640',
    content =>  template('uucp/call.erb')
    }
#}

