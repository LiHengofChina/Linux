#!/usr/bin/perl

use Switch;


=pod
	switch case 执行是基于 Switch 模块， Switch 模块默认是没有安装的。

	使用 CPAN 安装，安装 Switch.pm 模块 #APAN 就是Perl的第三方库

	#安装方式一： 使用 CPAN 安装
	cpan[1]> install Switch           // 安装
	cpan[2]> exit                     // 退出

	#安装方式二： 使用 apt-get 安装
	sudo apt-get install libswitch-perl

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
	2). case 语句后的 #可以是标量、数组、哈希、引用等。
				1). 如果是标量，会与 switch 语句的标量进行比较，判断是否相等。  
				2). 如果是列表，会判断 是否包涵
				3). 如果是引用，
						1). 数组引用，判断是否在数组中
						2). 哈希引用，判断key是否包含
	3). switch 语句可以有一个可选的 else ,该语句在最后面
	4). 当匹配 case 后，会执行 case 语句块代码，执行后跳出 switch 语句。
		当匹配 case 后，如果我们需要继续执行接下来的 case 语句，则需要添加 next 语句。
		#添加一个next，就相当于增加一次switch
=cut




print("\n_________________________________switch __________________________________________________\n");

 

 
 
$var = 10;
@array = (10, 20, 30);
%hash = ('key1' => 10, 'key2' => 50);

 
switch($var){
   case 10           { print "数字 10\n" ;next;}
   case "a"          { print "字符串 a" }
   case [1..10,42]   { print "数字在列表中" ; }
   case (\@array)    { print "数字在数组中" ; }
   case (\%hash)     { print "在哈希中" }
   else              { print "没有匹配的条件" }
}
 
  

 
