#!/usr/bin/perl

=pod
变量不需要显式声明类型，
在变量赋值后，
解释器会自动分配匹配的类型空间。

变量使用等号(=)来赋值。

我们可以在程序中使用 use strict 语句让所有变量需要强制声明类型。

=cut

$age = 25;             # 整型
$name = "runoob";      # 字符串
$salary = 1445.50;     # 浮点数

print("\n$age");

print("\n$name");

print("\n$salary");






