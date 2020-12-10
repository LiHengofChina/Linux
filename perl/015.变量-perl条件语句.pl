#!/usr/bin/perl

 

print("\n_________________________________条件语句__________________________________________________\n");

=pod

	Perl 条件语句是通过一条或多条语句的执行结果（True或者False）来决定执行的代码块。


	注意：
		1). 数字 0, 字符串 '0' 、 "" , 空 list() , 和 undef 为 false ，
			其他值均为 true。 
		2). true 前面使用 ! 或 not 则返回 false 。

		
	if 语句	 					if(){	}
	if...else 语句				if(){	}else{	}
	if...elsif...else 语句		if(){	}elsif(){	}elsif(){	}else


	
	
	unless 语句 				 // 与以前学习的if相反，为 false 时执行。
	
	unless...else 语句。			 
						 unless(boolean_expression){//false
						 }else{//true
						 }
	
	unless...elsif..else  
						unless(boolean_expression 1){ //false
						}elsif( boolean_expression 2){//true
						}elsif( boolean_expression 3){//true
						}else{//其它
						}
	
=cut
	
print("\n_________________________________switch 语句__________________________________________________\n");

=pod
	switch case 执行是基于 Switch 模块， Switch 模块默认是没有安装的。

	使用 CPAN 安装，安装 Switch.pm 模块 #APAN 就是Perl的第三方库

	#安装方式一： 使用 CPAN 安装
	cpan[1]> install Switch           // 安装
	cpan[2]> exit                     // 退出

	#安装方式二： 使用 apt-get 安装
	sudo apt-get install libswitch-perl
	

 
=cut

=pod
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

