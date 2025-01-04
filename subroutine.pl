#!D:\PERL\perl\bin -w 

#Description :: Perl Subroutine
#Author :: Poojitha Lagidi

use strict;

#Subroutines in Perl are a fundamental way to create reusable blocks of code. They allow the user to define a set of instructions that can be executed at various points in the code. 
#It helps to avoid repetition and keep the code organized.

#example 1
sub greet {
	my ($name) = @_; 
	print "Hello, $name!\n"; 
} 
greet("Perl"); 

#example 2
sub add {
    my ($a, $b) = @_;
    return $a + $b;
}
my $sum = add(3, 4);
print "Sum: $sum\n"; 

#example 3: factorial of a number
sub factorial{
	my ($num) = @_;
	if ($num <= 2){
		return $num;
	} else {
		return $num * factorial($num-1);
	}
}
my $value = &factorial(5);
print "Factorial = $value";