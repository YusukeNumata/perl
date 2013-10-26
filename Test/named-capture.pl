use feature qw(say switch);

# 正規表現のnamed-captureのテスト

# (?<識別子>元の正規表現)で、$+{識別子}で呼び出せる
my $string = "http://example.com/foo/bar";
$string =~ m{^http://(?<host>[^\s/]+)(?<path>/\S+)$};
say $+{host};
say $+{path};

