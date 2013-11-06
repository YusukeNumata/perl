# テストデータ
@data = ('aaa', 'bbb', 'ccc', 'aaa');

# データ出力
print "@data", "\n";

#
$tmpStr = '';
checkUnique(@data);

# チェック実施
sub checkUnique {
  # ソートしてから設定する
  my @list = sort @_;
  my $count = @list;
  my $rtn;
  for ($i = 0; $i < $count; $i++) {
    $rtn = checkUniqueImpl("@list[$i]");
    if ($rtn == "Unique") {
      last;
    }
  }
  print "rtn:$rtn", "\n";
}
sub checkUniqueImpl {
  my $input = $_[0];
  if ($input == $tmpStr) {
    "Unique";
  } else {
    $tmpStr = $_[0];
  }
}

