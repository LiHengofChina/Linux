#!/usr/bin/perl



#���������ڴ洢һ������ı���ֵ�ı�����
#Perl ����һ���Ǵ洢����ֵ���б���������������ǲ�ͬ���͡�
#  �б���� ��  (1,2,3) �����һ���б� 
#���� @ ��ʼ��
#Ҫ��������ı���������ʹ����Ԫ����($)+����������ָ���±������ʣ�ʵ��������ʾ



@ages = (25, 30, 35,40); #int����
@names = ("google","baidu","weixin","liheng");	 #�ַ�������

print "\$ages[0] = $ages[0]\n";
print "\$ages[1] = $ages[1]\n";
print "\$ages[2] = $ages[2]\n";
print "\$ages[3] = $ages[3]\n";

print "\$names[0] = $names[0]\n";
print "\$names[1] = $names[1]\n";
print "\$names[2] = $names[2]\n";
print "\$names[3] = $names[3]\n";


print("\n____________________��������__________________________\n");

#��ʽһ
@array = (1,2,'hello');

#��ʽ��
@liheng = qw/ �� �� һ �� �� �� �� �� �� �� /;  # ʹ�� qw// ������� ��ʽ�������飬����Ԫ����"�ո�"�ָ�
@days = qw/���1
���2
���3
���4/;
@dayss = qw(a b c d); # qw()��ʽ
#��ʽ��
$lihengx[0] = 'Monday';
$lihengx[6] = 'Sunday';

print "@array\n";
print "@liheng\n";
print "@days\n";
print "@dayss\n";
print "@lihengx\n";



print("\n____________________��������Ԫ��__________________________\n");

@sites = qw/google taobao runoob liheng xx/;

print "$sites[0]\n";
print "$sites[1]\n";
print "$sites[2]\n";
print "$sites[3]\n";
print "$sites[4]\n";

#�����ӷ���ʼ��ȡ��-1 Ϊ��һ��Ԫ�أ� -2 Ϊ�ڶ���Ԫ��
print "$sites[-1]\n"; #�����ȡ
print "$sites[-2]\n"; #�����ȡ


print("\n____________________���к�__________________________\n");
# �� "����" ����� "������ʽ"  ===>	��ʼֵ..����ֵ

@var_10 = (1..10);
@var_20 = (10..20);
@var_abc = (a..z);

print "@var_10\n";   # ��� 1 �� 10
print "@var_20\n";   # ��� 10 �� 20
print "@var_abc\n";  # ��� a �� z


print("\n___________________________�����С__________________________\n");

@array = (1,2,3);
print "�����С,����@array\n";



##
@array = (1,2,3);
$array[50] = 4;    #�ᵼ�������С��� 51��

$size = @array;  		#���鸳ֵ����������������Ԫ�ظ���
$max_index = $#array;   #ȡ�������

print "�����С:  $size\n";
print "�������: $max_index\n";



print("\n___________________________��Ӻ�ɾ������Ԫ��__________________________\n");
 
=pod
#�����г��õĲ���������
1). push @ARRAY, LIST
	���б��ֵ�ŵ������ĩβ
2). pop @ARRAY
	ɾ����������һ��ֵ
3). shift @ARRAY
	���������һ��ֵ���������������������ֵҲ���μ�һ��
4). unshift @ARRAY, LIST
	���б��������ǰ�棬�������������Ԫ�ظ�����
=cut

@sites = ("google","runoob","taobao");

$new_size = @sites;
print "@sites\t 			�������С��$new_size\n";

#ĩβ���ֵ
$new_size = push(@sites,"baidu");
print "@sites\t 		push�������С��$new_size\n";

#��ͷ���ֵ
$new_size = unshift(@sites,"weibo");
print "@sites\t 	�ڿ�ͷ���һ��ֵ�������С��$new_size\n";


#ĩβɾ��ֵ
$new_byte  = pop(@sites);
print "@sites\t 		��������ĩβֵ��ֵΪ��$new_byte\n";

#��ͷɾ��ֵ
$new_byte = shift(@sites);
print "@sites\t 			�������鿪ʼֵ��ֵΪ��$new_byte\n";


print("\n___________________________�и�����__________________________\n");


#���ǿ����и�һ�����飬�������и��������飺
@sites = qw/google taobao runoob weibo qq facebook ����/;

@sites2 = @sites[3,4,5];
print "@sites2\n";
@sites2 = @sites[3,5];
print "@sites2\n";
@sites2 = @sites[3,5,-1]; #�����Ǹ���
print "@sites2\n";
@sites2 = @sites[-1,3,5];
print "@sites2\n";
@sites2 = @sites[2..5]; #������Ҫ��ʹ�� ..��ʾ��
print "@sites2\n";


print("\n___________________________�滻����Ԫ��__________________________\n");

=pod
	Perl ������Ԫ���滻ʹ�� splice() �������﷨��ʽ���£�
	splice @ARRAY, OFFSET [ , LENGTH [ , LIST ] ]
	����˵����
		@ARRAY��Ҫ�滻�����顣
		OFFSET����ʼλ�á�
		LENGTH���滻��Ԫ�ظ�����
		LIST���滻Ԫ���б�
=cut

@nums = (1..20);
print "�滻ǰ - @nums\n";
splice(@nums, 5, 5, 21..25); 
print "�滻�� - @nums\n";

print("\n___________________________���ַ���ת��Ϊ����__________________________\n");

=pod
	Perl �н��ַ���ת��Ϊ����ʹ�� split() �������﷨��ʽ���£�
	split [ PATTERN [ , EXPR [ , LIMIT ] ] ]
	����˵����
		PATTERN���ָ�����Ĭ��Ϊ�ո�
		EXPR��ָ���ַ�������
		LIMIT�����ָ���ò������򷵻ظ������Ԫ�ظ�����
=cut

# �����ַ���
$var_test = "runoob";
$var_string = "www-runoob-com";
$var_names = "google,taobao,runoob,weibo";

# �ַ���תΪ����
@test = split('', $var_test);
@string = split('-', $var_string);
@names  = split(',', $var_names);

print "@test 		\t====>  	$test[3]\n";  	# ��� o
print "@string 		\t====>   $string[2]\n";  	# ��� com
print "@names \t====>  	$names[3]\n";   		# ��� weibo

print("\n___________________________������ת��Ϊ�ַ���__________________________\n");

=pod
	Perl �н�����ת��Ϊ�ַ���ʹ�� join() �������﷨��ʽ���£�
	join EXPR, LIST
	����˵����
		EXPR�����ӷ���
		LIST���б�����顣
=cut

# ����תΪ�ַ���

$string1 = join( '-',   @names );
$string2 = join( ',',   @names );
$string3 = join( '|@|', @names );
$string4 = join( '',   @names );

print "$string1\n";
print "$string2\n";
print "$string3\n";
print "$string4\n";


print("\n___________________________��������__________________________\n");

=pod
	Perl ����������ʹ�� sort() �������﷨��ʽ���£�
	sort [ SUBROUTINE ] LIST
	����˵����
		SUBROUTINE��ָ������
		LIST���б�����顣
=cut


# ��������
@sites = qw(google taobao runoob facebook);
print "����ǰ: @sites\n";
 
# �������������
@sites = sort(@sites);
print "�����: @sites\n";


print("\n___________________________�������____$[______________________\n");

#������� $[ ��ʾ����ĵ�һ����ֵ��
#һ�㶼Ϊ 0 ��������ǽ� $[ ����Ϊ 1��������ĵ�һ������ֵ��Ϊ 1���ڶ���Ϊ 2���Դ����ơ�


# ��������
@sites = qw(google taobao runoob facebook);
print "��վ: @sites\n";

print "\@sites[1]=$sites[1]��\@sites[2]=$sites[2] ��\n";

# ��������ĵ�һ������Ϊ 1
$[ = 1;

print "\@sites[1]=$sites[1]��\@sites[2]=$sites[2] ��\n";
 

print("\n___________________________�ϲ�����__________________________\n");

#��ʽһ
@numbers = (1,3,(4,5,6));
print "numbers = @numbers\n";

#��ʽ��
@odd = (1,3,5);
@even = (2, 4, 6);
@numbers = (@odd, @even);
print "numbers = @numbers\n";

@numbers = sort(@odd, @even);#�ϲ�������
print "numbers = @numbers\n"; 

print("\n___________________________���б���ѡ��Ԫ��__________________________\n");


#һ���б���Ե���һ������ʹ�ã�
#���б��ָ������ֵ���Զ�ȡָ����Ԫ��

#����һ
$var  = (5,4,3,2,1)[4];
print "var ��ֵΪ = $var\n";

#���ζ�
@list = (5,4,3,2,1)[1..3];
print "list ��ֵ = @list\n";



