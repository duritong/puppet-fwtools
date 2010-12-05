define fwtools::linux(){
  file{
    "/usr/local/sbin/${name}":
      source => [ "puppet:///modules/fwtools/${kernel}/${name}",
                  "puppet:///modules/fwtools/${name}" ],
      owner => root, group => 0, mode => 0700;
  }
}
