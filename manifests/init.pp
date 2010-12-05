class fwtools {
  case $kernel {
    openbsd: { include fwtools::openbsd }
    linux: { include fwtools::linux }
  }
}
