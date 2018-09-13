#!/usr/bin/perl -w

$function = shift @ARGV;

foreach $file (glob "*.c") {
  open my $f, "<",$file;
  while ($line = <$f>) {
    if ($line =~ /\b$function\(.*?\)/) {
      print $line;
    }
  }

}
