sub adder {
  my ($increment) = @_;

  return sub {
    my ($x) = @_;
    return $x + $increment;
  }
}

my $add1 = adder(1);   # 1を加算する関数
my $add20 = adder(20); # 20を加算する関数

print $add1->(10), "\n";  # 11
print $add20->(10), "\n"; # 30
print $add1->(30), "\n";  # 31

