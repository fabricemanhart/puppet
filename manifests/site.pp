# site.pp
import "nodes"
filebucket { main: server => "puppet.example.com" }
# defaults
File { backup => main }
Exec { path => "/usr/bin:/usr/sbin/:/bin:/sbin" }
