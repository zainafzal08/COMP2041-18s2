#!/usr/bin/perl -w


sub dothing {
  ($file) = @_;

  open my $f, "<", $file;
  while($line = <$f>) {
    if ($line =~ /#include <(.*)>/) {
      dothing $1;
    } else {
      print $line;
    }
  }
}
$file = shift @ARGV;


# $line = "i am zain and i am happy";
# @all_matches = ($line =~ /i am (\w+) and i am (\w+)/);
# print @all_matches;
