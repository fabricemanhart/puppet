#apps/init.pp
class apps::ntp {
    package { 'ntp': ensure => '1:4.2.6.p3+dfsg-1ubuntu3.1' }
    file { '/etc/ntp.conf':
                    mode => '640',
                    owner => root,
                    group => root,
                    source => "puppet:///modules/apps/ntp.conf",
                    require => Package[ntp],
                            }
            service { "ntp":
                    ensure => running,
                    enable => true,
                    pattern => 'ntpd',
            subscribe => [Package["ntp"], File["/etc/ntp.conf"]],
    }
}
