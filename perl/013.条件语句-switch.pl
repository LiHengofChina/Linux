#!/usr/bin/perl

 
 
print("\n_________________________________switch 语句__________________________________________________\n");

#=pod
	switch case 执行是基于 Switch 模块， Switch 模块默认是没有安装的。

	使用 CPAN 安装，安装 Switch.pm 模块 #APAN 就是Perl的第三方库

	#安装方式一： 使用 CPAN 安装
	cpan[1]> install Switch           // 安装
	cpan[2]> exit                     // 退出

	#安装方式二： 使用 apt-get 安装
	sudo apt-get install libswitch-perl
	

 
=cut

=pod

	switch(argument){
	   case 1            { print "数字 1" }
	   case "a"          { print "字符串 a" }
	   case [1..10,42]   { print "数字在列表中" }
	   case (\@array)    { print "数字在数组中" }
	   case /\w+/        { print "正则匹配模式" }
	   case qr/\w+/      { print "正则匹配模式" }
	   case (\%hash)     { print "哈希" }
	   case (\&sub)      { print "子进程" }
	   else              { print "不匹配之前的条件" }
	}
	switch 语句的规则
 	1). switch 语句的括号中可以使用任意类型的标量参数 #注意是标量参数
	2). case 语句后的标量会与 switch 语句的标量进行比较，判断是否相等。 #???只判断相等吗？
	3). switch 语句可以有一个可选的 else ,该语句在最后面
	4). 当匹配 case 后，会执行 case 语句块代码，执行后跳出 switch 语句。当匹配 case 后，如果我们需要继续执行接下来的 case 语句，则需要添加 next 语句。
=cut

#示例一：
use Switch;
 
$var = 10;
@array = (10, 20, 30);
%hash = ('key1' => 10, 'key2' => 20);
 
switch($var){
   case 10           { print "数字 10\n" }
   case "a"          { print "字符串 a" }
   case [1..10,42]   { print "数字在列表中" }
   case (\@array)    { print "数字在数组中" }
   case (\%hash)     { print "在哈希中" }
   else              { print "没有匹配的条件" }
}

#示例二：
use Switch;
 
$var = 10;
@array = (10, 20, 30);
%hash = ('key1' => 10, 'key2' => 20);
 
switch($var){
   case 10           { print "数字 10\n"; next; }  # 匹配后继续执行
   case "a"          { print "string a" }
   case [1..10,42]   { print "数字在列表中" }
   case (\@array)    { print "数字在数组中" }
   case (\%hash)     { print "在哈希中" }
   else              { print "没有匹配的条件" }
}


print("\n_________________________________三元运算符 ? :__________________________________________________\n");
#可以使用 条件运算 ? : 来简化 if...else 语句的操作

$name = "李恒";
$favorite = 10;     # 喜欢数
$status = ($favorite > 60 )? "有人喜欢" : "没人喜欢";
print "$name - $status\n";

