class fwtools::linux {
  if !$use_shorewall {
    fail("fwtools on ${fqdn} require shorewall!")
  }

  include ::shorewall

  fwtools::linux::tool{
    [ 'fwtool_show_conns_per_port',
      'fwtool_block_ips',
      'fwtools_defend_host',
      'fwtools_mirror_blocks' ]:
  }

}
