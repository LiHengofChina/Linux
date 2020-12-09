#!/usr/bin/perl



#标量是一个单一的数据单元。 数据可以是整数，浮点数，字符，字符串，段落等。
#简单的说它可以是任何东西。以下是标量的简单应用：



$age = 25;             # 整型
$name = "runoob";      # 字符串
$salary = 1445.50;     # 浮点数

print("\n$age");
print("\n$name");
print("\n$salary");



print("\n____________________数字标量__________________________\n");

$integer = 200;
$negative = -300;
$floating = 200.340;
$bigfloat = -1.2E-23;
$octal = 0377;# 八进制 377 , 十进制为 255 
$hexa =0xff;# 十六进制 FF, 十进制为 255 

print "integer = $integer\n";
print "negative = $negative\n";
print "floating = $floating\n";
print "bigfloat = $bigfloat\n";
print "octal = $octal\n";
print "hexa = $hexa\n";

print("\n____________________字符串标量__________________________\n");

$var = "字符串标量 - 菜鸟教程!";
$quote = '我在单引号内 - $var';
$double = "我在双引号内 - $var";
$escape = "转义字符使用 -\tHello, World!";
 
print "var = $var\n";
print "quote = $quote\n";
print "double = $double\n";
print "escape = $escape\n";

print("\n____________________标量运算__________________________\n");

$str = "hello" . "world"; #字符串连接
$num = 5 + 10;			  #数字相加
$mul = 4 * 5 ;  	      #数字相乘
$mix = $str . $num;        #数字 和 字符串 相连

print "str = $str\n";
print "num = $num\n";
print "mix = $mix\n";

print("\n____________________多行字符串__________________________\n");


#多行文字输出方式一：
$liheng = '
	学习的不仅是技术，更是梦想！
							--李恒
'; 
print "$liheng\n";

#多行文字输出方式二：
print <<"EOF"; #这里不带 "引号 或 带双引号" 效果相同。
	学习的不仅是技术，更是梦想！
							--李恒EOF
EOF

print("\n____________________特殊字符__________________________\n");

#__FILE__		#文件名
#__LINE__		#行号
#__PACKAGE__ 	#包名

print "文件名" . __FILE__ . "\n";
print "行号 " . __LINE__ . "\n";
print "包名 " . __PACKAGE__ . "\n";


print("\n____________________v 字符串__________________________\n");

# 一个以 v 开头, 后面跟着 一个 或 多个 用 "句点分隔的整数" , 会被当作一个字串文本。
# 当你想为 "每个字符" 直接声明其 "数字值" 时,
#  v-字串提供了一种更清晰的 构造这类字串的方法， 
# TODO 后面用到再学习

$smile = v9786;
$foo = v102.111.111;
$martin = v77.97.114.116.105.110;

print "smile = $smile\n";
print "foo = $foo\n";
print "martin = $martin\n";

