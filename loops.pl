#!D:\PERL\perl\bin -w 

#Description :: Perl Loops
#Author :: Poojitha Lagidi

use strict;

#for: Used to iterate over a range of values or an array. It's equivalent to the foreach loop in Perl but is commonly used with a counter.
print "for loop:\n";
for (my $i=0; $i<10; $i++){
	print "$i\n";	
}

#foreach: This is handy when an explicit counter is not necessary.
print "\nforeach loop:\n";
my @colours = ('red', 'blue', 'green');
foreach my $colour (@colours){
	print("Colour is $colour\n");
}

#while: It executes as long as a specified condition is true. It checks the condition before executing the block.
print "\nwhile loop:\n";
my $x = 0;
while ($x<3){
	print"Value of x = $x\n";
	$x++;
}

#until: It is the opposite of the while loop. It executes as long as the condition is false. It stops execution once the condition becomes true.
print "\nuntil loop:\n";
my $y = 0;
until($y>3){
	print"Value of y = $y\n";
	$y++;
}

#do...while: It executes the block at least once before checking the condition.
print "\ndo...while loop:\n";
my $z = 0;
do{
	print"Value of z = $z\n";
	$z++;
}while($z<3);

#do...until: Similar to do...while, but it runs until the condition becomes true.
print "\ndo...until loop:\n";
my $a = 0;
do{
	print"Value of a = $a\n";
	$a++;
}until($a==3);


# $_ is the default variable used by many functions and loops. If no variable is explicitly specified, Perl operates on $_ by default.
# In short, $_ is Perl’s shorthand for "use this implicitly if nothing else is provided."
print ("\nUsage of default variable in Perl:\n");
for(1..5){
	print"$_\t";
}
print "\n";
$_ = "Hello, World!";
if (/World/) {
    print "Found 'World' in $_\n";  # $_ contains the string "Hello, World!"
}
$_ = "Hello, World!";
s/World/Perl/;  # Substitute "World" with "Perl" in $_
print $_,"\n";
$_ = "Hello!";
print;  # prints "Hello!", as print uses $_ by default