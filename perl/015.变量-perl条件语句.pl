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

#示例一：






	
