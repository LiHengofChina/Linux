#!/usr/bin/perl

 
 
=pod

 
	ע�⣺
		1). false ==> ���� 0, �ַ��� '0' �� "" , �� list() , �� undef Ϊ false  
			true ==> ����ֵ��Ϊ true
			
		2). true ǰ��ʹ�� ! �� not �򷵻� false ��

		
	if ���	 					if(){}
	if...else ���				if(){}else{}
	if...elsif...else ���		if(){}elsif(){}else

 
=cut
	
print("\n_________________________________if(){}__________________________________________________\n");
 
$a = 10;
if( $a < 20){
	printf "a С�� 20\n";
}

$a = "";
if( $a ){ #false
    printf "���� a Ϊ true\n";
}







print("\n_________________________________if(){}else{}__________________________________________________\n");

$a = 100;
if( $a < 20) {
	printf "aС��20\n";
}else{
	printf "a����20\n"
}

$a = "";
if( $a ){
	 printf "a ����Ϊ true\n";
}else{
	printf "a ����Ϊ false\n";
}







print("\n_________________________________if(){}elsif(){}else__________________________________________________\n");

$liheng  = 100;
if( $liheng == 20) {
	 printf "liheng ��ֵΪ 20\n";
}elsif( $liheng == 30){
	 printf "liheng ��ֵΪ 30\n";
}else{
	 printf "liheng ��ֵΪ $liheng\n";
}

 
 