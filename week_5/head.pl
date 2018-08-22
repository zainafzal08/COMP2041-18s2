#!/usr/bin/perl -w
$n = 10;
if(@ARGV && $ARGV[0] =~ /-[0-9]+/) {
  $n = shift @ARGV;
  $n =~ s/-//g;
}

if (!@ARGV) {
  $ARGV[0] = "-";
}

foreach $file (@ARGV) {
  my $i = 0;
  open(my $input,"<$file");
  print "==> $file <==\n";
  while ($line = <$input>) {
    if($i++ > $n) {
      last;
    }
    print $line;
  }
  close($input);
}
