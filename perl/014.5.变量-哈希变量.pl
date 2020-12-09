#!/usr/bin/perl

# 哈希 是一个 key/value 对的集合。
# 哈希 % 开始。 
# 如果要访问哈希值，可以使用 ${key} 格式来访问：


%data = ('google', 45, 'runoob', 30, 'taobao', 40);

print "\$data{'google'} = $data{'google'}\n";
print "\$data{'runoob'} = $data{'runoob'}\n";
print "\$data{'taobao'} = $data{'taobao'}\n";

print("\n___________________________创建哈希________________________________________________________\n");

#方式一：为每个 key 设置 value
$data{'google'} = 'google.com';
$data{'runoob'} = 'runoob.com';
$data{'taobao'} = 'taobao.com';

#方式二：通过列表设置
	#写法一
	%data =  ('google', 'google.com', 'runoob', 'runoob.com', 'taobao', 'taobao.com');
	#写法二
	%data = ('googl e'=>'google.com', 'runoob'=>'runoob.com', 'taobao'=>'taobao.com');
	#写法三 -替代了引号 ,这种方式 key 不能出现空格，读取元素方式为： $val = $data{-google}
	%data = (-google=>'google.com', -runoob=>'runoob.com', -taobao=>'taobao.com'); 



print("\n___________________________访问哈希元素_________________________________________\n");

%data = ('google'=>'google.com', 'runoob'=>'runoob.com', 'taobao'=>'taobao.com');

print " $data{'-google'}\n";
print " $data{'runoob'}\n";
print " $data{'taobao'}\n";


print("\n___________________________读取哈希值_(哈希提取值为数组)_________________________\n");


# 你可以像数组一样从哈希中提取值。
# 哈希值提取到数组语法格式：@{key1,key2}。
	
%data = (-taobao => 45, -google => 30, -runoob => 40);
@array = @data{ -taobao , -runoob }; 
print "Array : @array\n";

print("\n___________________________读取所有key_______________________________________________________\n");

%data = ('google'=>'https://google.com', 'runoob'=>'https://runoob.com', 'taobao'=>'https://taobao.com');
@names = keys %data;
print "@names \n" ;

print("\n___________________________读取所有的值_______________________________________________________\n");

%data = ('google'=>'google.com', 'runoob'=>'runoob.com', 'taobao'=>'taobao.com');
@address = values %data;
print "@address \n" ;

print("\n___________________________检测元素是否存在_______________________________________________________\n");

# 如果你在哈希中读取不存在的 key/value 对 ，会返回 undefined 值，且在执行时会有警告提醒。
# 为了避免这种情况，我们可以使用 exists 函数来判断key是否存在，存在的时候读取：

%data = ('google'=>'google.com', 'runoob'=>'runoob.com', 'taobao'=>'taobao.com');

if(exists($data{facebook})){
	print "facebook 的网址为 $data{'facebook'} \n";
}else{
	print "facebook 键不存在\n";
}


print("\n___________________________获取哈希大小_______________________________________________________\n");

#哈希大小为元素的个数，我们可以通过先获取 key 或 value 的所有元素数组，再计算数组元素多少来获取哈希的大小，

%data = ('google'=>'google.com', 'runoob'=>'runoob.com', 'taobao'=>'taobao.com');

@keys = keys %data;
$size = @keys;
print "1 - 哈希大小: $size\n";

@values = values %data;
$size = @values;
print "2 - 哈希大小: $size\n";

print("\n___________________________哈希中添加或删除元素_______________________________________________________\n");

#添加 key/value 对可以通过简单的赋值来完成。但是删除哈希元素你需要使用 delete 函数：

%data = ('google'=>'google.com', 'runoob'=>'runoob.com', 'taobao'=>'taobao.com');
@keys = keys %data;
$size = @keys;
print "1 - 哈希大小: $size\n";


$data{'facebook'} = 'facebook.com'; #添加一个元素
@keys = keys %data;
$size = @keys;
print "2 - 哈希大小: $size\n";


delete $data{'taobao'}; # 删除哈希中的元素
@keys = keys %data;
$size = @keys;
print "3 - 哈希大小: $size\n";

print("\n___________________________迭代哈希_______________________________________________________\n");

%data = ('google'=>'google.com', 'runoob'=>'runoob.com', 'taobao'=>'taobao.com');


#方式一：
foreach $k (keys %data){
    print "$data{$k}\n";
}

#方式二：
%data = ('google'=>'google.com', 'runoob'=>'runoob.com', 'taobao'=>'taobao.com');
while(($key, $value) = each(%data)){
	print "$data{$key}\n"; #或 print "$value\n";
}



