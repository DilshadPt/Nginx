class nginx::config {

   file { "/etc/nginx-conf":
       ensure => "directory",
       }

   file{ 'nginx.conf':
         path => '/etc/nginx-conf/nginx.conf',
         ensure => present,
         mode => 0644,
         source => "puppet:///modules/nginx/nginx.conf",
#         content => "This is the new content",
    }
}
