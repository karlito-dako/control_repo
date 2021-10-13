node default {
}
node 'master.puppet.vm' {
  include role::master_server
}

node /^app/ {
  include role::app_server
}

node /^web/ {
  include role::web_server
}
