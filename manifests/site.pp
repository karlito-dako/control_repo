node default {
}
node 'master.puppet.vm' {
  include role::master_server
  file { 'root/README':
    ensure => file,
    content => $fqdn,
  }
}

node /^app/ {
  include role::app_server
}

node /^web/ {
  include role::web_server
}
