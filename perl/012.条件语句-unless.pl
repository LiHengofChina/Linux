#!/usr/bin/perl

 
 
=pod
	unless Ϊ false ��ִ��
	
	unless ���	 					unless(){}
	unless...else ���				unless(){}else{}
	unless...elsif...else ���		unless(){}elsif(){}else

 
=cut
	
print("\n_________________________________unless(){}__________________________________________________\n");
 
$a = 10;
unless( $a < 20 ){
	printf "a ���ڵ��� 20\n";
}

$a = "";
unless($a){
	printf "���� a Ϊ false\n";
}

 


print("\n_________________________________unless(){}__________________________________________________\n");

$a = 100;

unless( $a == 20){
	printf "����������Ϊ false\n";
}else{
	printf "����������Ϊ true\n";
}

$a = "";
unless( $a ){
    printf "a ����������Ϊ false\n";
}else{
	printf "a ����������Ϊ true\n";
}

 
print("\n_________________________________unless(){}__________________________________________________\n");



$a = 30;
unless( $a == 20 ){  #�жϲ���
	printf "a ��ֵ��Ϊ 20\n";
}elsif( $a == 30){   #�жϵ�
	printf "a ��ֵΪ 30\n";
}else{
	printf "a ��ֵΪ $a\n";
}


 
