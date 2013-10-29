# 配列リファレスを受け取って、要素の和を返す
my @tmp_array = (1, 3, 5, 7, 9);
print "Total: ", compute_sum(\@tmp_array), "\n";

sub compute_sum {
  my ($aref) = @_;
  my $sum = 0;
  foreach (@$aref) {
    $sum += $_;
  }
  return $sum;
}

