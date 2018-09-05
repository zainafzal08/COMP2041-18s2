#!/usr/bin/perl -w

sub print_hash{
  my %hash = @_;
  foreach $key (keys %hash) {
    print("[$key] = $hash{$key}\n");
  }
}

%colours = ("John" => "blue", "Anne" => "red", "Andrew" => "green");
print_hash(%colours);
