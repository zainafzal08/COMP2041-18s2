#!/usr/bin/perl -w
$start = $ARGV[0];
$end = $ARGV[1];

while($line = <>) {
  $line =~ /(\S+) (\S+) (\d+)/;
  $distances{$1}{$2} = $3;
  $distances{$2}{$1} = $3;
}
$current_town = $start
while($current_town ne $end) {
    # visit $current_town
    $new_dist = $shortest_dist{$prev_town} + $distance{$prev_town}{$current_town}
    if (!defined $shortest_dist || $shortest_dist{$current_town} > $new_dist) {
      $shortest_dist{$current_town} = $new_dist;
    }
    # find next town
    # for all key 1
    #     for all key 2
    #          if key1 has been visited
    #                 for all neighbouts of key1
    #                      check smallest.
}
