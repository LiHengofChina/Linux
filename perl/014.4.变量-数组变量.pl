#!/usr/bin/perl



#数组是用于存储一个有序的标量值的变量。
#Perl 数组一个是存储标量值的列表变量，变量可以是不同类型。
#  列表就是 ：  (1,2,3) 这就是一个列表 
#数组 @ 开始。
#要访问数组的变量，可以使用美元符号($)+变量名，并指定下标来访问，实例如下所示



@ages = (25, 30, 35,40); #int数组
@names = ("google","baidu","weixin","liheng");	 #字符串数组

print "\$ages[0] = $ages[0]\n";
print "\$ages[1] = $ages[1]\n";
print "\$ages[2] = $ages[2]\n";
print "\$ages[3] = $ages[3]\n";

print "\$names[0] = $names[0]\n";
print "\$names[1] = $names[1]\n";
print "\$names[2] = $names[2]\n";
print "\$names[3] = $names[3]\n";


print("\n____________________创建数组__________________________\n");

#方式一
@array = (1,2,'hello');

#方式二
@liheng = qw/ 这 是 一 个 数 组 ， 李 恒 。 /;  # 使用 qw// 运算符号 方式定义数组，数组元素以"空格"分隔
@days = qw/李恒1
李恒2
李恒3
李恒4/;
@dayss = qw(a b c d); # qw()形式
#方式三
$lihengx[0] = 'Monday';
$lihengx[6] = 'Sunday';

print "@array\n";
print "@liheng\n";
print "@days\n";
print "@dayss\n";
print "@lihengx\n";



print("\n____________________访问数组元素__________________________\n");

@sites = qw/google taobao runoob liheng xx/;

print "$sites[0]\n";
print "$sites[1]\n";
print "$sites[2]\n";
print "$sites[3]\n";
print "$sites[4]\n";

#负数从反向开始读取，-1 为第一个元素， -2 为第二个元素
print "$sites[-1]\n"; #反向读取
print "$sites[-2]\n"; #反向读取


print("\n____________________序列号__________________________\n");
# 按 "序列" 输出的 "数组形式"  ===>	起始值..结束值

@var_10 = (1..10);
@var_20 = (10..20);
@var_abc = (a..z);

print "@var_10\n";   # 输出 1 到 10
print "@var_20\n";   # 输出 10 到 20
print "@var_abc\n";  # 输出 a 到 z


print("\n___________________________数组大小__________________________\n");

@array = (1,2,3);
print "数组大小,标量@array\n";



##
@array = (1,2,3);
$array[50] = 4;    #会导致数组大小变成 51。

$size = @array;  		#数组赋值给标量，返回数组元素个数
$max_index = $#array;   #取最大索引

print "数组大小:  $size\n";
print "最大索引: $max_index\n";



print("\n___________________________添加和删除数组元素__________________________\n");
 
=pod
#数组中常用的操作函数：
1). push @ARRAY, LIST
	将列表的值放到数组的末尾
2). pop @ARRAY
	删除数组的最后一个值
3). shift @ARRAY
	弹出数组第一个值，并返回它。数组的索引值也依次减一。
4). unshift @ARRAY, LIST
	将列表放在数组前面，并返回新数组的元素个数。
=cut

@sites = ("google","runoob","taobao");

$new_size = @sites;
print "@sites\t 			旧数组大小：$new_size\n";

#末尾添加值
$new_size = push(@sites,"baidu");
print "@sites\t 		push后数组大小：$new_size\n";

#开头添加值
$new_size = unshift(@sites,"weibo");
print "@sites\t 	在开头添加一个值后数组大小：$new_size\n";


#末尾删除值
$new_byte  = pop(@sites);
print "@sites\t 		弹出数组末尾值后，值为：$new_byte\n";

#开头删除值
$new_byte = shift(@sites);
print "@sites\t 			弹出数组开始值后，值为：$new_byte\n";


print("\n___________________________切割数组__________________________\n");


#我们可以切割一个数组，并返回切割后的新数组：
@sites = qw/google taobao runoob weibo qq facebook 网易/;

@sites2 = @sites[3,4,5];
print "@sites2\n";
@sites2 = @sites[3,5];
print "@sites2\n";
@sites2 = @sites[3,5,-1]; #可以是负数
print "@sites2\n";
@sites2 = @sites[-1,3,5];
print "@sites2\n";
@sites2 = @sites[2..5]; #连续的要以使用 ..表示。
print "@sites2\n";


print("\n___________________________替换数组元素__________________________\n");

=pod
	Perl 中数组元素替换使用 splice() 函数，语法格式如下：
	splice @ARRAY, OFFSET [ , LENGTH [ , LIST ] ]
	参数说明：
		@ARRAY：要替换的数组。
		OFFSET：起始位置。
		LENGTH：替换的元素个数。
		LIST：替换元素列表。
=cut

@nums = (1..20);
print "替换前 - @nums\n";
splice(@nums, 5, 5, 21..25); 
print "替换后 - @nums\n";

print("\n___________________________将字符串转换为数组__________________________\n");

=pod
	Perl 中将字符串转换为数组使用 split() 函数，语法格式如下：
	split [ PATTERN [ , EXPR [ , LIMIT ] ] ]
	参数说明：
		PATTERN：分隔符，默认为空格。
		EXPR：指定字符串数。
		LIMIT：如果指定该参数，则返回该数组的元素个数。
=cut

# 定义字符串
$var_test = "runoob";
$var_string = "www-runoob-com";
$var_names = "google,taobao,runoob,weibo";

# 字符串转为数组
@test = split('', $var_test);
@string = split('-', $var_string);
@names  = split(',', $var_names);

print "@test 		\t====>  	$test[3]\n";  	# 输出 o
print "@string 		\t====>   $string[2]\n";  	# 输出 com
print "@names \t====>  	$names[3]\n";   		# 输出 weibo

print("\n___________________________将数组转换为字符串__________________________\n");

=pod
	Perl 中将数组转换为字符串使用 join() 函数，语法格式如下：
	join EXPR, LIST
	参数说明：
		EXPR：连接符。
		LIST：列表或数组。
=cut

# 数组转为字符串

$string1 = join( '-',   @names );
$string2 = join( ',',   @names );
$string3 = join( '|@|', @names );
$string4 = join( '',   @names );

print "$string1\n";
print "$string2\n";
print "$string3\n";
print "$string4\n";


print("\n___________________________数组排序__________________________\n");

=pod
	Perl 中数组排序使用 sort() 函数，语法格式如下：
	sort [ SUBROUTINE ] LIST
	参数说明：
		SUBROUTINE：指定规则。
		LIST：列表或数组。
=cut


# 定义数组
@sites = qw(google taobao runoob facebook);
print "排序前: @sites\n";
 
# 对数组进行排序
@sites = sort(@sites);
print "排序后: @sites\n";


print("\n___________________________特殊变量____$[______________________\n");

#特殊变量 $[ 表示数组的第一索引值，
#一般都为 0 ，如果我们将 $[ 设置为 1，则数组的第一个索引值即为 1，第二个为 2，以此类推。


# 定义数组
@sites = qw(google taobao runoob facebook);
print "网站: @sites\n";

print "\@sites[1]=$sites[1]，\@sites[2]=$sites[2] 。\n";

# 设置数组的第一个索引为 1
$[ = 1;

print "\@sites[1]=$sites[1]，\@sites[2]=$sites[2] 。\n";
 

print("\n___________________________合并数组__________________________\n");

#方式一
@numbers = (1,3,(4,5,6));
print "numbers = @numbers\n";

#方式二
@odd = (1,3,5);
@even = (2, 4, 6);
@numbers = (@odd, @even);
print "numbers = @numbers\n";

@numbers = sort(@odd, @even);#合并并排序
print "numbers = @numbers\n"; 

print("\n___________________________从列表中选择元素__________________________\n");


#一个列表可以当作一个数组使用，
#在列表后指定索引值可以读取指定的元素

#情形一
$var  = (5,4,3,2,1)[4];
print "var 的值为 = $var\n";

#情形二
@list = (5,4,3,2,1)[1..3];
print "list 的值 = @list\n";



