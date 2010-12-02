define fwtools::linux::tool(){
  file{
    "/usr/local/sbin/${name}":
      source => "puppet:///modules/fwtools/linux/${name}",
      owner => root, group => 0, mode => 0700;
  }
}
