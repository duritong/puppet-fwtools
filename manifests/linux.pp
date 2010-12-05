class fwtools::linux inherits fwtools::base {
  if !$use_shorewall {
    fail("fwtools on ${fqdn} require shorewall!")
  }

  include ::shorewall

  fwtools::tool{
    [ 'fwtools_show_conns_per_port',
      'fwtools_block_ips',
      'fwtools_defend_host' ]:
  }

}
