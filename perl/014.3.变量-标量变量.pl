#!/usr/bin/perl



#������һ����һ�����ݵ�Ԫ�� ���ݿ��������������������ַ����ַ���������ȡ�
#�򵥵�˵���������κζ����������Ǳ����ļ�Ӧ�ã�



$age = 25;             # ����
$name = "runoob";      # �ַ���
$salary = 1445.50;     # ������

print("\n$age");
print("\n$name");
print("\n$salary");



print("\n____________________���ֱ���__________________________\n");

$integer = 200;
$negative = -300;
$floating = 200.340;
$bigfloat = -1.2E-23;
$octal = 0377;# �˽��� 377 , ʮ����Ϊ 255 
$hexa =0xff;# ʮ������ FF, ʮ����Ϊ 255 

print "integer = $integer\n";
print "negative = $negative\n";
print "floating = $floating\n";
print "bigfloat = $bigfloat\n";
print "octal = $octal\n";
print "hexa = $hexa\n";

print("\n____________________�ַ�������__________________________\n");

$var = "�ַ������� - ����̳�!";
$quote = '���ڵ������� - $var';
$double = "����˫������ - $var";
$escape = "ת���ַ�ʹ�� -\tHello, World!";
 
print "var = $var\n";
print "quote = $quote\n";
print "double = $double\n";
print "escape = $escape\n";

print("\n____________________��������__________________________\n");

$str = "hello" . "world"; #�ַ�������
$num = 5 + 10;			  #�������
$mul = 4 * 5 ;  	      #�������
$mix = $str . $num;        #���� �� �ַ��� ����

print "str = $str\n";
print "num = $num\n";
print "mix = $mix\n";

print("\n____________________�����ַ���__________________________\n");


#�������������ʽһ��
$liheng = '
	ѧϰ�Ĳ����Ǽ������������룡
							--���
'; 
print "$liheng\n";

#�������������ʽ����
print <<"EOF"; #���ﲻ�� "���� �� ��˫����" Ч����ͬ��
	ѧϰ�Ĳ����Ǽ������������룡
							--���EOF
EOF

print("\n____________________�����ַ�__________________________\n");

#__FILE__		#�ļ���
#__LINE__		#�к�
#__PACKAGE__ 	#����

print "�ļ���" . __FILE__ . "\n";
print "�к� " . __LINE__ . "\n";
print "���� " . __PACKAGE__ . "\n";


print("\n____________________v �ַ���__________________________\n");

# һ���� v ��ͷ, ������� һ�� �� ��� �� "���ָ�������" , �ᱻ����һ���ִ��ı���
# ������Ϊ "ÿ���ַ�" ֱ�������� "����ֵ" ʱ,
#  v-�ִ��ṩ��һ�ָ������� ���������ִ��ķ����� 
# TODO �����õ���ѧϰ

$smile = v9786;
$foo = v102.111.111;
$martin = v77.97.114.116.105.110;

print "smile = $smile\n";
print "foo = $foo\n";
print "martin = $martin\n";

