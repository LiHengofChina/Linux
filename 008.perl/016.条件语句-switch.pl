#!/usr/bin/perl

use Switch;


=pod
	switch case ִ���ǻ��� Switch ģ�飬 Switch ģ��Ĭ����û�а�װ�ġ�

	ʹ�� CPAN ��װ����װ Switch.pm ģ�� #APAN ����Perl�ĵ�������

	#��װ��ʽһ�� ʹ�� CPAN ��װ
	cpan[1]> install Switch           // ��װ
	cpan[2]> exit                     // �˳�

	#��װ��ʽ���� ʹ�� apt-get ��װ
	sudo apt-get install libswitch-perl

	switch(argument){
	   case 1            { print "���� 1" }
	   case "a"          { print "�ַ��� a" }
	   case [1..10,42]   { print "�������б���" }
	   case (\@array)    { print "������������" }
	   case /\w+/        { print "����ƥ��ģʽ" }
	   case qr/\w+/      { print "����ƥ��ģʽ" }
	   case (\%hash)     { print "��ϣ" }
	   case (\&sub)      { print "�ӽ���" }
	   else              { print "��ƥ��֮ǰ������" }
	}
	switch ���Ĺ���
 	1). switch ���������п���ʹ���������͵ı������� #ע���Ǳ�������
	2). case ����� #�����Ǳ��������顢��ϣ�����õȡ�
				1). ����Ǳ��������� switch ���ı������бȽϣ��ж��Ƿ���ȡ�  
				2). ������б����ж� �Ƿ����
				3). ��������ã�
						1). �������ã��ж��Ƿ���������
						2). ��ϣ���ã��ж�key�Ƿ����
	3). switch ��������һ����ѡ�� else ,������������
	4). ��ƥ�� case �󣬻�ִ�� case ������룬ִ�к����� switch ��䡣
		��ƥ�� case �����������Ҫ����ִ�н������� case ��䣬����Ҫ��� next ��䡣
		#���һ��next�����൱������һ��switch
=cut




print("\n_________________________________switch __________________________________________________\n");

 

 
 
$var = 10;
@array = (10, 20, 30);
%hash = ('key1' => 10, 'key2' => 50);

 
switch($var){
   case 10           { print "���� 10\n" ;next;}
   case "a"          { print "�ַ��� a" }
   case [1..10,42]   { print "�������б���" ; }
   case (\@array)    { print "������������" ; }
   case (\%hash)     { print "�ڹ�ϣ��" }
   else              { print "û��ƥ�������" }
}
 
  

 
