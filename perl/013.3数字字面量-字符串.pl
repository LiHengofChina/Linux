#!/usr/bin/perl 

$var='这是一个使用
多行字符串文本
的例子';
print($var);

print "\n___________________________\n";

# 换行 \n 位于双引号内，有效
$str = "菜鸟教程  \nwww.runoob.com";
print "$str\n";
 
print "\n___________________________\n";
 
# 换行 \n 位于单引号内，无效
$str = '菜鸟教程  \nwww.runoob.com';
print "$str\n";

print "\n___________________________\n";
 
# \u 只有 R 会转换为大写
$str = "\urunoob";
print "$str\n";

print "\n___________________________\n";
 
# \U 所有的字母都会转换为大写
$str = "\Urunoob";
print "$str\n";
 
print "\n___________________________\n";
 
# \U \E 指定部分会转换为大写
$str = "Welcome to \Urunoob\E.com!"; 
print "$str\n";

print "\n___________________________\n";
 
# 将到 \E 为止的非单词（non-word）字符加上反斜线
$str = "\QWelcome to runoob's family";
print "$str\n";

print "\n___________________________\n";



=pod
	  Perl 中的字符串使用一个标量来表示，
	  定义方式和 c 很像，
	  但是在 Perl 里面字符串不是用 \0 来表示结束的。
	  
	  用单引号定义可以使用多行文本，
	  
=cut




