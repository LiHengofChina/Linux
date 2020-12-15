#!/usr/bin/perl

 
 
=pod

 
	注意：
		1). false ==> 数字 0, 字符串 '0' 、 "" , 空 list() , 和 undef 为 false  
			true ==> 其他值均为 true
			
		2). true 前面使用 ! 或 not 则返回 false 。

		
	if 语句	 					if(){}
	if...else 语句				if(){}else{}
	if...elsif...else 语句		if(){}elsif(){}else

 
=cut
	
print("\n_________________________________if(){}__________________________________________________\n");
 
$a = 10;
if( $a < 20){
	printf "a 小于 20\n";
}

$a = "";
if( $a ){ #false
    printf "变量 a 为 true\n";
}







print("\n_________________________________if(){}else{}__________________________________________________\n");

$a = 100;
if( $a < 20) {
	printf "a小于20\n";
}else{
	printf "a大于20\n"
}

$a = "";
if( $a ){
	 printf "a 条件为 true\n";
}else{
	printf "a 条件为 false\n";
}







print("\n_________________________________if(){}elsif(){}else__________________________________________________\n");

$liheng  = 100;
if( $liheng == 20) {
	 printf "liheng 的值为 20\n";
}elsif( $liheng == 30){
	 printf "liheng 的值为 30\n";
}else{
	 printf "liheng 的值为 $liheng\n";
}

 
 