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
  $count = @list;
  for ($i = 0; $i < $count; $i++) {
    checkUniqueImpl("@list[$i]");
  }
}
sub checkUniqueImpl {
  $tmpStr = $_[0];
  print "$tmpStr", "\n";
}

