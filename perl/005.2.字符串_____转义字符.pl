#!/usr/bin/perl


$result = "liheng \"studying\"";
print "$result\n";
print "\$result\n";


=pod

常用的一些转义字符如下表：

\\	反斜线
\'	单引号
\"	双引号
\a	系统响铃
\b	退格
\f	换页符
\n	换行
\r	回车
\t	水平制表符
\v	垂直制表符
\0nn	创建八进制格式的数字
\xnn	创建十六进制格式的数字
\cX	控制字符，x可以是任何字符
\u	强制下一个字符为大写
\l	强制下一个字符为小写
\U	强制将所有字符转换为大写
\L	强制将所有的字符转换为小写
\Q	将到\E为止的非单词（non-word）字符加上反斜线
\E	结束\L、\U、\Q

=cut
