#
# https://wiki.archlinux.org/index.php/systemd#Service_types
#
class systemd inherits systemd::params {

  Exec {
    path => '/bin:/sbin:/usr/bin:/usr/sbin',
  }

  exec { 'systemctl daemon-reload':
    command     => 'systemctl daemon-reload',
    refreshonly => true,
  }

  #TODO: compatibility, to be removed in the future
  exec { 'systemctl reload':
    command     => 'systemctl daemon-reload',
    refreshonly => true,
  }
}
