
#!/usr/bin/perl


print "Hello, Liheng!\n";

print ("Hello, Liheng!\n");

	
=pod
	说明：
		1). 代码中 /usr/bin/perl 是 perl 解释器的路径。
			在执行该脚本前要先确保文件有可执行权限，
			#我们可以先将文件权限修改为 0755 ：
		2). print ("Hello, Liheng!\n")
				后面可以加小括号，也可以不加
=cut	
		


print "\n______________________________________________________\n";


 

print "Hello, world\n";
print       "Hello, world\n";
print       "Hello, 
					world\n";
		
=pod
	说明：
		1). print       "Hello, world\n";
				后面可以有多个空格，不影响执行
		2).	print       "Hello, 
								world\n";
			但是如果空格和分行出现在字符串内，他会原样输出。
			这是因为 双引号 和 单引号都 可以定义多选文件。
=cut	
