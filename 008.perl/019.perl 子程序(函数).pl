#!/usr/bin/perl



=pod

    Perl 子程序也就是用户定义的函数。
    Perl 子程序即执行一个特殊任务的一段分离的代码，它可以使减少重复代码且使程序易读。
    Perl 子程序可以出现在程序的任何地方，语法格式如下：

#定义
          sub subroutine{
             statements;
          }

#调用
         subroutine( 参数列表 );
         &subroutine( 参数列表 ); #5.0 以下版本调用子程序方法，在新版本上，虽然也支持该调用方法，但不推荐使用。

=cut



print("\n_________________________________创建与调用__________________________________________________\n");

# 函数定义
sub Hello{
	print "Hello, World!\n";
}
# 函数调用
Hello();




print("\n_________________________________向子程序传递参数__________________________________________________\n");
# @_ 表示形参
# 定义求平均值函数
sub Average{
	   # 获取所有传入的参数
	   $n = scalar(@_);
	   $sum = 0;
	   foreach $item (@_){
		  $sum += $item;
	   }
	   $average = $sum / $n;

	   print '传入的参数为 : ',"@_\n";           # 打印整个数组
	   print "第一个参数值为 : $_[0]\n";         # 打印第一个参数
	   print "传入参数的平均值为 : $average\n";  # 打印平均值
	  
}
Average(10,20,30);


print("\n_________________________________向子程序传递列表__________________________________________________\n");


#定义函数
sub PrintList{
	my @list = @_;
	print "列表为：@list \n";
	
}
$a = 10;
@b = (1,2,3,4);

#列表参数
PrintList($a,@b);#一个标量，一个数组

print("\n_________________________________向子程序传递哈希__________________________________________________\n");



sub PrintHash{
	my (%hash) = @_;
	foreach my $key ( keys %hash){
		my $value = $hash{$key};
		print "$key : $value \n";
		
	}
}

%hash = ( 'name' => 'runoob' , 'age' => 3 );
PrintHash(%hash);


print("\n_________________________________子程序返回值__________________________________________________\n");

# 子程序 可以使用 return 语句 来返回函数值。
# 如果没有使用 return 语句，则子程序的最后一行语句将作为返回值。

sub add_a_b{
	# 不使用return
	# $_[0] + $_[1];
	
	# 使用return
	return $_[0] + $_[1];
}

print add_a_b(1,2);



print("\n_________________________________子程序私有变量__________________________________________________\n");
=pod

默认情况下，Perl 中所有的变量都是全局变量， 这就是说变量在程序的任何地方都可以调用。
如果我们需要设置私有变量，可以使用 my 操作符来设置。

my 操作符用于创建词法作用域变量，通过 my 创建的变量，存活于声明开始的地方，直到闭合作用域的结尾。
闭合作用域指的可以是一对花括号中的区域，可以是一个文件，也可以是一个 if, while, for, foreach, eval字符串。

sub somefunc {
   my $variable; # $variable 在方法 somefunc() 外不可见
   my ($another, @an_array, %a_hash); #  同时声明多个变量
}


=cut

$string = "Hello ,World!";

sub PrintHello{
	my $string;
	$string = "Hello, Liheng!";
	print "$string \n";
	
}

PrintHello();
print "$string \n";


print("\n_________________________________变量的临时赋值__________________________________________________\n");

=pod
	我们可以使用 local 为全局变量提供临时的值，在退出作用域后将原来的值还回去。
	local 定义的变量不存在于主程序中，但存在于该子程序和该子程序调用的子程序中。
	相当于java里面的线程本地变量。
=cut

# 全局变量
$string = "Hello, World!";

sub PrintMe{
   print "PrintMe 函数内字符串值：$string\n";#Hello, Liheng #线程本地
}

sub PrintRunoob{
   # PrintHello 函数私有变量
   local $string;
   $string = "Hello, Liheng!";
   # 子程序调用子程序
   PrintMe();
   print "PrintRunoob 函数内字符串值：$string\n"; #Hello, Liheng #线程本地
}

 
sub PrintHello{
   print "PrintHello 函数内字符串值：$string\n"; #Hello, World! #打印全局的
}
 
# 函数调用
PrintRunoob();
PrintHello();
print "函数外部字符串值：$string\n"; #Hello, World!  #打印全局的


print("\n_________________________________静态变量__________________________________________________\n");

# state关键字将局部变量变得持久
# state也是词法变量，所以只在定义该变量的词法作用域中有效，举个例子：

use feature 'state';

sub PrintCount{
	state $count = 0 ;# 初始化变量?? 这里只赋值了一次??
	
	print "counter 值为：$count\n";
	
	$count++;
}

for(1..5){
	PrintCount();
}

#state仅能创建闭合作用域为子程序内部的变量。
#state可以声明标量、数组、哈希。但在声明数组和哈希时，不能对其初始化（至少Perl 5.14不支持）。



print("\n_________________________________子程序调用上下文__________________________________________________\n");

#子程序(函数)调用过程中，会根据上下文来返回不同类型的值，
#比如以下 localtime() 子程序，在标量上下文返回字符串，在列表上下文返回列表:


# 标量上下文
my $datestring = localtime( time );
print $datestring;
 
print "\n";
 
# 列表上下文
($sec,$min,$hour,$mday,$mon, $year,$wday,$yday,$isdst) = localtime(time);
printf("%d-%d-%d %d:%d:%d",$year+1990,$mon+1,$mday,$hour,$min,$sec);
 
print "\n";



=pod

my 和 local 的区别

内部 -> 外部：

 （1）my 和 local 都只在一个 block 里有效，出去就失效；
 （2）但是 local 的变量可以继续在这个 block 中调用的子程序中存在；
 （3）如果有与外界同名的变量，两者在 block 退出后都不影响外界同名变量；
外部 -> 内部：

（1）外部设置 my、local、缺省均队内有效，但是同名变量外部 my，在 block 内部 local 是不允许的。因为二者在 block 中调用的子程序中均有效，会冲突。

（2）如果在一个 block 中有一个 my 修饰的变量和外界的一个变量同名，而且又需要在这个 block 中使用外界变量时，两个办法：

 第一个办法，用 main 的 package 修饰这个变量名 $main::global。
 第二个办法，用 our 修饰 our $global，那么该 block 中接下来出现的所有 $global 都是外界的 global。
（3）编写脚本时，注意作用域，防止外部影响内部。

=cut



