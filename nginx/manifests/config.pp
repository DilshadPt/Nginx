class nginx::config {

   file { "/etc/nginx-conf":
       ensure => "directory",
       owner => 'root',
       group => '0',
       }

   file{ 'nginx.conf':
         ensure => present,  
         owner => 'root',
         group => '0',
         path => '/etc/nginx-conf/nginx.conf',
         mode => 0644,
         source => "puppet:///modules/nginx/nginx.conf",
#         require => ["nginx::install"],
    }
}
