use strict;
use warnings;
use String::Random;

my $sr = String::Random->new();

# 英字6文字+数字2文字
my $str = $sr->randregex('[a-zA-z]{6}\d{2}');
print $str, "\n";

# 8文字以上16文字以下
my $str2 = $sr->randregex('.{8,16}');
print $str2, "\n";

