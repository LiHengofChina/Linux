#!/usr/bin/perl

# ��ϣ ��һ�� key/value �Եļ��ϡ�
# ��ϣ % ��ʼ�� 
# ���Ҫ���ʹ�ϣֵ������ʹ�� ${key} ��ʽ�����ʣ�
# $data{'google'}

%data = ('google', 45, 'runoob', 30, 'taobao', 40);

print "\$data{'google'} = $data{'google'}\n";
print "\$data{'runoob'} = $data{'runoob'}\n";
print "\$data{'taobao'} = $data{'taobao'}\n";

print("\n___________________________________________________________������ϣ________________________________________________________________________\n");

#��ʽһ��Ϊÿ�� key ���� value
$data{'google'} = 'google.com';
$data{'runoob'} = 'runoob.com';
$data{'taobao'} = 'taobao.com';

#��ʽ����ͨ���б�����
	#д��һ
	%data =  ('google', 'google.com', 'runoob', 'runoob.com', 'taobao', 'taobao.com');
	#д����
	%data = ('google'=>'google.com', 'runoob'=>'runoob.com', 'taobao'=>'taobao.com');
	#д���� -��������� ,���ַ�ʽ key ���ܳ��ֿո񣬶�ȡԪ�ط�ʽΪ�� $val = $data{-google}
	%data = (-google=>'google.com', -runoob=>'runoob.com', -taobao=>'taobao.com'); 



print("\n___________________________________________________________���ʹ�ϣԪ��_________________________________________________________________________\n");

%data = ('google'=>'google.com', 'runoob'=>'runoob.com', 'taobao'=>'taobao.com');

print " $data{'google'}\n";
print " $data{'runoob'}\n";
print " $data{'taobao'}\n";


print("\n___________________________________________________________��ȡ��ϣֵ_(��ϣ��ȡֵΪ����)_________________________________________________________\n");
 
# ��ϣֵ��ȡ�������﷨��ʽ��@{key1,key2}��
	
%data = (-taobao => 45, -google => 30, -runoob => 40);
@array = @data{ -taobao , -runoob }; 
print "Array : @array\n";

print("\n___________________________________________________________��ȡ����key_______________________________________________________________________________________\n");

%data = ('google'=>'https://google.com', 'runoob'=>'https://runoob.com', 'taobao'=>'https://taobao.com');
@names = keys %data;
print "@names \n" ;

print("\n___________________________________________________________��ȡ���е�ֵ_______________________________________________________________________________________\n");

%data = ('google'=>'google.com', 'runoob'=>'runoob.com', 'taobao'=>'taobao.com');
@address = 	 %data;
print "@address \n" ;

print("\n___________________________________________________________���Ԫ���Ƿ����_______________________________________________________________________________________\n");

# ������ڹ�ϣ�ж�ȡ�����ڵ� key/value �� ���᷵�� undefined ֵ������ִ��ʱ���о������ѡ�
# Ϊ�˱���������������ǿ���ʹ�� exists �������ж�key�Ƿ���ڣ����ڵ�ʱ���ȡ��

%data = ('google'=>'google.com', 'runoob'=>'runoob.com', 'taobao'=>'taobao.com');

if(exists($data{facebook})){	#ע�������ֵ�Ƿ���ڣ��жϷ�ʽ��ĳ��key��ֵ������ֱ���ж�key�治����

	print "facebook ����ַΪ $data{'facebook'} \n";
}else{
	print "facebook ��������\n";
}


print("\n___________________________________________________________��ȡ��ϣ��С_______________________________________________________________________________________\n");

#��ϣ��СΪԪ�صĸ��������ǿ���ͨ���Ȼ�ȡ key �� value ������Ԫ�����飬�ټ�������Ԫ�ض�������ȡ��ϣ�Ĵ�С��

%data = ('google'=>'google.com', 'runoob'=>'runoob.com', 'taobao'=>'taobao.com');

@keys = keys %data;
$size = @keys;
print "1 - ��ϣ��С: $size\n";

@values = values %data;
$size = @values;
print "2 - ��ϣ��С: $size\n";

print("\n___________________________________________________________��ϣ����ӻ�ɾ��Ԫ��_______________________________________________________________________________________\n");

#��� key/value �Կ���ͨ���򵥵ĸ�ֵ����ɡ�����ɾ����ϣԪ������Ҫʹ�� delete ������

%data = ('google'=>'google.com', 'runoob'=>'runoob.com', 'taobao'=>'taobao.com');
@keys = keys %data;
$size = @keys;
print "1 - ��ϣ��С: $size\n";


$data{'facebook'} = 'facebook.com'; #���һ��Ԫ��
@keys = keys %data;
$size = @keys;
print "2 - ��ϣ��С: $size\n";


delete $data{'taobao'}; # ɾ����ϣ�е�Ԫ��
@keys = keys %data;
$size = @keys;
print "3 - ��ϣ��С: $size\n";

print("\n__________________________________________________________������ϣ_______________________________________________________________________________________\n");

%data = ('google'=>'google.com', 'runoob'=>'runoob.com', 'taobao'=>'taobao.com');


#��ʽһ��
foreach $k (keys %data){
    print "$data{$k}\n";
}

#��ʽ����
%data = ('google'=>'google.com', 'runoob'=>'runoob.com', 'taobao'=>'taobao.com');
while(($key, $value) = each(%data)){
	print "$data{$key}\n"; #�� print "$value\n";
}



