# データ初期化
my $x = 100;
my $sref = \$x;

# 100 100 と表示
print "$$sref $x\n";

# 105 105 と表示
$x += 5;
print "$$sref $x\n";

#   105 と表示
# $$serfが参照不可となる
$sref += 5;
print "$$sref $x\n";

# 以下の行を実行するとコンパイルエラー
#&&sref += 5;

# リファレンスを再設定できない・・・
#   105 と表示
my $serf = \$x;
print "$$sref $x\n";

