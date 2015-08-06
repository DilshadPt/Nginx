node 'agent.example.com', 'master.example.com' {
  class {'nginx':
      nginxusers => 'test1' 
   }
}
