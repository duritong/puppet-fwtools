class fwtools::linux {
  if !$use_shorewall {
    fail("fwtools on ${fqdn} require shorewall!")
  }

  include ::shorewall

  fwtools::linux::tool{
    [ 'fwtools_show_conns_per_port',
      'fwtools_block_ips',
      'fwtools_defend_host',
      'fwtools_mirror_blocks' ]:
  }

}
