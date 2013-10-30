sub make_counter {
  my ($counter) = @_;

  return {
    inc => sub { return ++$counter },
    dec => sub { return --$counter }
  };
}

my $foo = make_counter(0);   # 初期値0のカウンタ
my $bar = make_counter(100); # 初期値100のカウンタ

print $foo->{inc}->(), "\n";
print $bar->{inc}->(), "\n";
print $bar->{inc}->(), "\n";
print $foo->{inc}->(), "\n";
print $bar->{inc}->(), "\n";
print $foo->{inc}->(), "\n";
print $foo->{dec}->(), "\n";
print $bar->{dec}->(), "\n";

