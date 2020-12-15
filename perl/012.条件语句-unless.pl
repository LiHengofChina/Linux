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


 
