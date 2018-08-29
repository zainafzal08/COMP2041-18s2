#!/usr/bin/perl -w

foreach $filename (@ARGV) {
  open(my $f, "<",$filename) or die;
  $current_date = 0;
  $current_species = 0;
  $count = 0;
  $first = 1;
  while ($line = <$f>) {
    if ($line =~ /([\/\d]+) +(\d+) +(.*)/) {
      if ($1 eq $current_date && $3 eq $current_species) {
        $count+= $2;
      } else {
        if($first) {
          $first = 0;
        } else {
          print "$current_date $count $current_species\n";
        }
        $count = $2;
        $current_date = $1;
        $current_species = $3;
      }
    } else {
      print "what the fuck dude\n";
    }

  }
}
