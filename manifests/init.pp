class fwtools {
  case $::kernel {
    openbsd: { include fwtools::base }
    linux: { include fwtools::linux }
  }
}
