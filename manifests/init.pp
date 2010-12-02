class fwtools {
  case $kernel {
    linux: { include fwtools::linux }
  }
}
