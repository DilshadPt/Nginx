class nginx(
  $nginxusers = undef,
  $enable = true,
  )
{
 class{'nginx::install': } ->
 class{'nginx::config': } ->
 class{'nginx::service': } ->
 Class["nginx"]
  
  notify{"Printing Variable inside $nginxusers ":}

}

