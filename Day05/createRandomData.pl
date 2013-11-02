use warnings;
use strict;
use String::Random;

open (FH, ">>data.txt");

for (my $i = 0; $i < 10000000; $i++) {
  my $rand_str = String::Random->new->randregex('[A-Za-z0-9]{32}');
  print FH $rand_str, "\n";
}

close (FH);

