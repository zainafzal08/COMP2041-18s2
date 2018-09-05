#!/usr/bin/perl -w
open my $f1, "<",$ARGV[0];
my %seen;
while(<$f1>) {
  chomp;
  foreach $word (split / /) {
    $word =~ s/\W//g;
    $word =~ tr/A-Z/a-z/;
    $seen{$word} = 1;
  }
}

open my $f2, "<",$ARGV[1];
while(<$f2>) {
  chomp;
  foreach $word (split / /) {
    $word =~ s/\W//g;
    $word =~ tr/A-Z/a-z/;
    delete $seen{$word};
  }
}

foreach $key (sort keys %seen) {
  print("%key\n");
}
