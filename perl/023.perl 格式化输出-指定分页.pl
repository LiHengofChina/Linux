#!/usr/bin/perl




print("\n_________________________________________________________ 指定页码 和行数 _________________________________________________________________________\n"); 

=pod
	 $% ($FORMAT_PAGE_NUMBER) ：当前输出的页号
	 $= ($FORMAT_LINES_PER_PAGE) ：每页中的行数
=cut
format EMPLOYEE =
===================================
@<<<<<<<<<<<<<<<<<<<<<< @<< 
$name, $age
@#####.##
$salary
===================================
.
 
# 添加分页 $% 
format EMPLOYEE_TOP =
===================================
Name                    Age Page  
	第@<页，每页@<条。
	 $% , $=
=================================== 
.
 
select(STDOUT);
$~ = EMPLOYEE;
$^ = EMPLOYEE_TOP;
 
@n = ("Ali", "Runoob", "Jaffer");
@a  = (20,30, 40);
@s = (2000.00, 2500.00, 4000.000);
 
$i = 0;
foreach (@n){
   $name = $_;
   $age = $a[$i];
   $salary = $s[$i++];
   write;
}

 



