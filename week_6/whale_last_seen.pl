#!/usr/bin/perl -w

my %species_last_seen;

foreach $filename (@ARGV) {
  open(my $f, "<",$filename) or die;
  while ($line = <$f>) {
    if ($line =~ /([\/\d]+) +(\d+) +(.*)/) {
      $species_last_seen{$3} = $1;
    } else {
      print "what the fuck dude\n";
    }
  }
  foreach $s (sort keys %species_last_seen) {
    print "$s $species_last_seen{$s}\n";
  }
}
