#!/usr/bin/perl

print("\n_________________________________Perl 时间日期__________________________________________________\n");

=pod

      1、time() 函数：返回从1970年1月1日起累计的秒数
      2、localtime() 函数：获取本地时区时间
      3、gmtime() 函数： 获取格林威治时间
      
=cut

print("\n_________________________________ localtime() 函数_________________________________________________\n");

=pod
      sec,     # 秒， 0 到 61
      min,     # 分钟， 0 到 59
      hour,    # 小时， 0 到 24
      mday,    # 天， 1 到 31
      mon,     # 月， 0 到 11
      year,    # 年，从 1900 开始
      wday,    # 星期几，0-6,0表示周日
      yday,    # 一年中的第几天,0-364,365
      isdst    # 如果夏令时有效，则为真


=cut

#示例一：
@months = qw( 一月 二月 三月 四月 五月 六月 七月 八月 九月 十月 十一月 十二月 );
@days = qw(星期天 星期一 星期二 星期三 星期四 星期五 星期六);
 
($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
print "$mday $months[$mon] $days[$wday]\n";


#示例二：
#果直接调用 localtime() ，它返回系统当期设置时区的时间
 
$datestring = localtime();
print "时间日期为：$datestring\n";

print("\n_________________________________格林威治时间 (GMT)_________________________________________________\n");
#函数 gmtime() 与 localtime() 类似，但它返回标准格林威治时间。

$local_datestring = localtime();
print "本地时间日期为：$local_datestring\n";
 
$gmt_datestring = gmtime();
print "GMT 时间日期为：$gmt_datestring\n";

#可以看出，中国的时间和格林威治时间相差了8小时。


print("\n_________________________________格式化日期和时间_________________________________________________\n");
#我们可以使用 localtime() 函数的 9 个时间元素来输出需要制定的格式时间。格式化输出使用 printf() 函数：

($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
 
printf("格式化时间：HH:MM:SS\n");
printf("%02d:%02d:%02d", $hour, $min, $sec);

print("\n_________________________________新纪元时间(Epoch Time)_________________________________________________\n");

#我们可以使用 time() 函数来获取新纪元时间，该函数返回从1970年1月1日起累计的秒数。

#示例一：
$epoc = time();
print "从1970年1月1日起累计的秒数为：$epoc\n";

#示例二：
($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
print "当期时间和日期：";
printf("%d-%d-%d %d:%d:%d",$year+1900,$mon+1,$mday,$hour,$min,$sec);
 
print "\n";
 
$epoc = time();
$epoc = $epoc - 24 * 60 * 60;   # 一天前的时间秒数
($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime($epoc);
print "昨天时间和日期：";
printf("%d-%d-%d %d:%d:%d",$year+1900,$mon+1,$mday,$hour,$min,$sec);
 
print "\n";



print("\n_________________________________POSIX 函数 strftime()_________________________________________________\n");

#https://www.runoob.com/perl/perl-date-time.html

use POSIX qw(strftime);
$datestring = strftime "%Y-%m-%d %H:%M:%S", localtime;
printf("时间日期 - $datestring\n");
 
#  GMT 格式化时间日期
$datestring = strftime "%Y-%m-%d %H:%M:%S", gmtime;
printf("时间日期 - $datestring\n");






