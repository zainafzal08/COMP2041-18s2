#!/usr/bin/perl -w

my %count;

while(<>) {
  chomp;
  foreach $word (split / /) {
    $word =~ s/\W//g;
    $word =~ tr/A-Z/a-z/;
    $count{$word}+=1;
  }
}
# works
@sorted = sort(keys %count);
@sorted = sort({$count{$a}<=>$count{$b}} @sorted);
foreach $key (@sorted) {
  printf("$count{$key} $key\n");
}
