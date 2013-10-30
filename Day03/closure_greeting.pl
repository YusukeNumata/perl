sub greeting {
  my ($name) = @_;

  return sub {
    print "Helo, $name.\n";
  };
}

my $john = greeting("John");
my $tom = greeting("Tom");

$john->();
$tom->();

