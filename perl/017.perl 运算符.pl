#!/usr/bin/perl

print("\n_________________________________算术运算符__________________________________________________\n");
=pod

      +	加法运算	    $a + $b 结果为 30
      -	减法运算	    $a - $b 结果为 -10
      *	乘法运算	    $a * $b 结果为 200
      /	除法运算	    $b / $a 结果为 2
      %	求余运算， 整除后的余数	$b % $a 结果为 0
      **	乘幂	  $a**$b 结果为 10 的 20 次方
=cut

$a = 10;
$b = 20;
 
print "\$a = $a , \$b = $b\n";
 
$c = $a + $b;
print '$a + $b = ' . $c . "\n";
 
$c = $a - $b;
print '$a - $b = ' . $c . "\n";
 
$c = $a * $b;
print '$a * $b = ' . $c . "\n";
 
$c = $a / $b;
print '$a / $b = ' . $c . "\n";
 
$c = $a % $b;
print '$a % $b = ' . $c. "\n";
 
$a = 2;
$b = 4;
$c = $a ** $b;
print '$a ** $b = ' . $c . "\n";


print("\n_________________________________比较运算符(数字)__________________________________________________\n");

=pod
    ==	    检查两个操作数的值是否相等，如果相等则条件为 true，否则为 false。	($a == $b) 为 false
    !=	    检查两个操作数的值是否相等，如果不相等则条件为 true，否则为 false。	($a != $b) 为 true。
    <=>	    检查两个操作数的值是否相等, 如果左边的数小于右边的数返回 -1，如果相等返回 0, 如果左边的数大于右边的数返回 1 。	($a <=> $b) 返回 -1。
    >	      检查左操作数的值是否大于右操作数的值，如果是则条件为 true，否则为 false。	($a > $b) 返回 false。
    <	      检查左操作数的值是否小于右操作数的值，如果是则条件为 true，否则返回 false。	($a < $b) 返回 true。
    >=	  检查左操作数的值是否大于或等于右操作数的值，如果是则条件为 true，否则返回 false。	($a >= $b) 返回 false。
    <=	  检查左操作数的值是否小于或等于右操作数的值，如果是则条件为 true，否则返回 false。
=cut



$a = 10;
$b = 20;
 
print "\$a = $a , \$b = $b\n";
 
if( $a == $b ){
   print "$a == \$b 结果 true\n";
}else{
   print "\$a == \$b 结果 false\n";
}
 
if( $a != $b ){
   print "\$a != \$b 结果 true\n";
}else{
   print "\$a != \$b 结果 false\n";
}
 
$c = $a <=> $b;  #这个相当于java的compareTo 返回   -1 0 1
print "\$a <=> \$b 返回 $c\n";
 
if( $a > $b ){
   print "\$a > \$b 结果 true\n";
}else{
   print "\$a > \$b 结果 false\n";
}
 
if( $a >= $b ){
   print "\$a >= \$b 结果 true\n";
}else{
   print "\$a >= \$b 结果 false\n";
}
 
if( $a < $b ){
   print "\$a < \$b 结果 true\n";
}else{
   print "\$a < \$b 结果 false\n";
}
 
if( $a <= $b ){
   print "\$a <= \$b 结果 true\n";
}else{
   print "\$a <= \$b 结果 false\n";
}

print("\n_________________________________比较运算符(字符串)__________________________________________________\n");

=pod

      lt	<
      gt	>
      le	<=
      ge	>=
      eq	==
      ne	!=
      cmp	compareTo

=cut


$a = "abc";
$b = "xyz";
 
print "\$a = $a ，\$b = $b\n";
 
if( $a lt $b ){
   print "$a lt \$b 返回 true\n";
}else{
   print "\$a lt \$b 返回 false\n";
}
 
if( $a gt $b ){
   print "\$a gt \$b 返回 true\n";
}else{
   print "\$a gt \$b 返回 false\n";
}
 
if( $a le $b ){
   print "\$a le \$b 返回 true\n";
}else{
   print "\$a le \$b 返回 false\n";
}
 
if( $a ge $b ){
   print "\$a ge \$b 返回 true\n";
}else{
   print "\$a ge \$b 返回 false\n";
}
 
if( $a ne $b ){
   print "\$a ne \$b 返回 true\n";
}else{
   print "\$a ne \$b 返回 false\n";
}
 
$c = $a cmp $b;
print "\$a cmp \$b 返回 $c\n";

print("\n_________________________________赋值运算符__________________________________________________\n");

=pod
      =
      +=
      -=
      *=
      /=
      %=
      **=
=cut
$a = 10;
$b = 20;
 
print "\$a = $a ，\$b = $b\n";
 
$c = $a + $b;
print "赋值后 \$c = $c\n";
 
$c += $a;
print "\$c = $c ，运算语句 \$c += \$a\n";
 
$c -= $a;
print "\$c = $c ，运算语句 \$c -= \$a\n";
 
$c *= $a;
print "\$c = $c ，运算语句 \$c *= \$a\n";
 
$c /= $a;
print "\$c = $c ，运算语句 \$c /= \$a\n";
 
$c %= $a;
print "\$c = $c ，运算语句 \$c %= \$a\n";
 
$c = 2;
$a = 4;
print "\$a = $a ， \$c = $c\n";
$c **= $a;
print "\$c = $c ，运算语句 \$c **= \$a\n";

print("\n_________________________________位运算__________________________________________________\n");
＝pod
      #设置 $a = 60，$b = 13，现在以二进制格式表示，它们如下所示：
      $a = 0011 1100
      $b = 0000 1101

      $a&$b = 0000 1100
      $a|$b = 0011 1101
      $a^$b = 0011 0001
      ~$a  = 1100 0011

      &     且运算
      |     或运算
      ^	异或，存在但不同时存在时，取值 。
      ~	取反，即0变成1，1变成0。
      <<    左移运算
      >>    右移运算

=cut

use integer;
 
$a = 60;
$b = 13;
 
print "\$a = $a , \$b = $b\n";
 
$c = $a & $b;
print "\$a & \$b = $c\n";
 
$c = $a | $b;
print "\$a | \$b = $c\n";
 
$c = $a ^ $b;
print "\$a ^ \$b = $c\n";
 
$c = ~$a;
print "~\$a = $c\n";
 
$c = $a << 2;
print "\$a << 2 = $c\n";
 
$c = $a >> 2;
print "\$a >> 2 = $c\n";


print("\n_________________________________逻辑运算符__________________________________________________\n");

=pod
      and 相当于java的 &
      &&
      or 相当于java的 |
      ||
      not  相当于java的 !
=cut

$a = true;
$b = false;
 
print "\$a = $a , \$b = $b\n";
 
$c = ($a and $b);
print "\$a and \$b = $c\n";
 
$c = ($a  && $b);
print "\$a && \$b = $c\n";
 
$c = ($a or $b);
print "\$a or \$b = $c\n";
 
$c = ($a || $b);
print "\$a || \$b = $c\n";
 
$a = 0;
$c = not($a);
print "not(\$a)= $c\n";

