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


	
	
	unless 语句 				// 与以前学习的if相反，为 false 时执行。
	unless...else 语句。		// 下面的else 和 elseif 保持不变，但 unless 要false才执行。
	unless...elsif..else  
	switch 语句
	
=cut
	
print("\n_________________________________switch 语句__________________________________________________\n");

	