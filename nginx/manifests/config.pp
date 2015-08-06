class nginx::config {
   $nginxowner = $nginx::nginxusers 

   file { "/etc/nginx-conf":
	    ensure => "directory",
      #owner => $nginxowner,
      mode => 0640,
    } 

   file{ 'nginx.conf':
	    ensure => present,
	    owner => $nginxowner,
	    path => '/etc/nginx-conf/nginx.conf',
	    mode => 0640,
	    source => "puppet:///modules/nginx/nginx.conf",
	    # require => ["nginx::install"],
   }

   notify{"Hello Inside COnfig $nginxowner":}

}
