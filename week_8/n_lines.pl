#!/usr/bin/perl -w

sub get_n {
  ($n) = @_;
  $line = "";
  foreach $i (0..$n-1) {
    $line .= <STDIN>;
    $i+=1;
  }
  return $line;
}

get_n 10, 12, 14;
