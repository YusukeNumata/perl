use strict;
use warnings;
use String::Random;

for (my $i = 0; $i < 10; $i++) {
  main();
}

sub main {
  #テストデータ（ランダム）
  my $StrRand = String::Random->new();
  my $str = $StrRand->randregex('[a-zA-Z0-9]{6}');
  #重複文字の確認
  my $rtn = isUnique($str);
  #結果を出力
  print "Data:$str -> $rtn ", "\n";
}

#重複文字の確認処理
sub isUnique {
  my $input = $_[0];
  my @list = sort split //, $input;
  my $ch = "";
  my $ch_befor = "";
  foreach $ch (@list) {
    if ($ch eq $ch_befor) {
      return "true";
    } else {
      $ch_befor = $ch;
    }
  }
  return "false";
}

# データ出力
#print "@data", "\n";

#
#$tmpStr = '';
#checkUnique(@data);

# チェック実施
#sub checkUnique {
#  # ソートしてから設定する
#  my @list = sort @_;
#  my $count = @list;
#  my $rtn;
#  for ($i = 0; $i < $count; $i++) {
#    $rtn = checkUniqueImpl("@list[$i]");
#    if ($rtn == "Unique") {
#      last;
#    }
#  }
#  print "rtn:$rtn", "\n";
#}
#sub checkUniqueImpl {
#  my $input = $_[0];
#  if ($input == $tmpStr) {
#    "Unique";
#  } else {
#    $tmpStr = $_[0];
#  }
#}

