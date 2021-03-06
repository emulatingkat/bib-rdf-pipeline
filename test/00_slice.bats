#!/usr/bin/env bats

load test_helper

setup () {
  global_setup
  make realclean
}

@test "split into parts" {
  make slice
  [ -s slices/slice.md5 ]
  [ -s slices/slice-0040X-in.alephseq ]
  [ -s slices/slice-00411-in.alephseq ]
}
