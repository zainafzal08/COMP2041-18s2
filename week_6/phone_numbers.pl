#!/usr/bin/perl -w
foreach $site (@ARGV) {
  open(my $f, "-|","curl $site") or die;
  while ($line = <$f>) {
    @numbers = split /[^\d\- ]+/,$line;
    foreach $n (@numbers) {
      $n =~ s/[ \-]//gi;
      if (length($n) >= 8 && length($n) <= 15) {
        print $n,"\n";
      }
    }
  }
}
