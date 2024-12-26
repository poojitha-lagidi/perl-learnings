#!D:\PERL\perl\bin -w 

#Description :: Perl Conditional Statements
#Author :: Poojitha Lagidi

use strict;

#if: executes a block of code if the condition evaluates to true.
my $n1 = 10;
if($n1 > 5){
	print "$n1 is greater than 5\n";
}

#if-else: provides an alternate block of code if the condition is false.
my $n2 = 7;
if ($n2>10){
	print "$n2 is greater than 10\n";
} else {
	print "$n2 is less than 10\n";
}

#if-elsif-else: used for multiple conditions.
my $n3 = 0x5;
if ($n3>5){
	print "$n3 is greater than 5\n";
} elsif($n3 == 5) {
	print "$n3 is equal to 5\n";
} else {
	print "$n3 is less than 5\n";
}

#unless: It is the opposite of if. It executes a block of code if the condition evaluates to false.
my $n4 = 10;
unless($n4 < 5){
	print "$n1 is not greater than 5\n";
}