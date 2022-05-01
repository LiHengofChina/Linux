#!/usr/bin/perl




print("\n________________________________输出到其它文件______________________________________________\n"); 

=pod
	 默认情况下，
	 函数write将结果输出到 标准输出文件 STDOUT
	 也可以使它将结果输出到任意其它的文件中
	 
	最简单的方法就是把文件变量作为参数传递给write，如：
	write(MYFILE);

=cut
 
 
#第一步定义一个格式
format MYFORMAT = 
=================================
      我会被输入到文件中
=================================
.

#可以不指定，会被忽略
$~ = "MYFORMAT";

if (open(MYFORMAT, ">liheng")) { # liheng 是文件名

	write MYFORMAT; #这样，MYFORMAT内容会被输出到文件
	close MYFORMAT; #关闭
}