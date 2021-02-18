#!/usr/bin/perl

 
 
=pod
	unless 为 false 才执行
	
	unless 语句	 					unless(){}
	unless...else 语句				unless(){}else{}
	unless...elsif...else 语句		unless(){}elsif(){}else

 
=cut
	
print("\n_________________________________unless(){}__________________________________________________\n");
 
$a = 10;
unless( $a < 20 ){
	printf "a 大于等于 20\n";
}

$a = "";
unless($a){
	printf "条件 a 为 false\n";
}

 


print("\n_________________________________unless(){}__________________________________________________\n");

$a = 100;

unless( $a == 20){
	printf "给定的条件为 false\n";
}else{
	printf "给定的条件为 true\n";
}

$a = "";
unless( $a ){
    printf "a 给定的条件为 false\n";
}else{
	printf "a 给定的条件为 true\n";
}



 
print("\n_________________________________unless(){}__________________________________________________\n");



$a = 30;
unless( $a == 20 ){  #判断不等
	printf "a 的值不为 20\n";
}elsif( $a == 30){   #判断等
	printf "a 的值为 30\n";
}else{
	printf "a 的值为 $a\n";
}



print("\n_________________________________unless(){}__________________________________________________\n");



#写法一：常规写法
unless( 30 < 20 ){
	printf "30 才不小于20呢！" . "\n";
}
 
#写法二：把{}写法里面的内容写在前面，//PS: 这种写法没有找到依据，是根据我测试得出的结果。
printf "30 才不小于20呢！"  . "\n"  unless( 30 < 20 );


 
print("\n_________________________________一个特殊语法记录__________________________________________________\n");

$args{'liheng'} = "lixx" unless ( defined $args{'liheng'} and $args{'liheng'} ne ""); 
print $args{'liheng'} . "\n" ;

#改成常规写法，应该为：
unless (    (defined $args{'liheng'})   and   ($args{'liheng'} ne "")   ){
		$args{'liheng'} = "lixx"; 
}
print $args{'liheng'} . "\n" ;





 
 
 
 