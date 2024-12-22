#!D:\PERL\perl\bin -w #shebang line

#Description :: Perl Operators
#Author :: Poojitha Lagidi

use strict;

#Arithmetic Operators
print "\nArithmetic Operators- \n";
my $var1 = 5;
my $var2 = 2;
print "$var1 + $var2 = ", $var1 + $var2, "\n"; #Addition
print "$var1 - $var2 = ", $var1 - $var2, "\n"; #Subtraction
print "$var1 * $var2 = ", $var1 * $var2, "\n"; #Multiplication
print "$var1 / $var2 = ", $var1 / $var2, "\n"; #Division
print "$var1 % $var2 = ", $var1 % $var2, "\n"; #Modulus
print "$var1 ** $var2 = ", $var1 ** $var2, "\n"; #Exponent


#String Operators
print "\nString Operators- \n";
my $var3 = "Perl";
my $var4 = "Operators";
print $var3.$var4, "\n"; #String Concatenation
print $var3 x 3, "\n"; #String Repetition
print ((($var3." ") x 3), "\n");
$var3 .= " "; # $var3 = $var3." "; (.= is Concatenate and assign)
$var3 x= 5; # $var3 = $var3 x 5;
print $var3,"\n";


#Equality Operators
# o/p if true = 1; o/p if false = blank space
#Numeric comparisions
print "\nNumeric comparisons-\n";
my $var5 = 5;
my $var6 = 0x5;
print $var5 == $var6,"\n"; #equal to 
print $var5 != $var6,"\n"; #not equal to
print $var5 > $var6,"\n"; #greater than
print $var5 < $var6,"\n"; #less than
print $var5 <= $var6,"\n"; #less than or equal to
print $var5 >= $var6,"\n"; #greater than or equal to 
print $var5 <=> $var6, "\n"; # if $var5 < $var6 = -1; else if $var5 = $var6 = 0; else if $var5 > $var6 = 1;
#String comparisons
print "String comparisons- \n";
my $var7 = "Perl";
my $var8 = "lerP";
print $var7 eq $var8,"\n"; #eq = equal to 
print $var7 ne $var8,"\n"; #ne = not equal to
print $var7 gt $var8,"\n"; #gt = greater than
print $var7 lt $var8,"\n"; #lt = less than
print $var7 le $var8,"\n"; #le = less than or equal to
print $var7 ge $var8,"\n"; #ge = greater than or equal to
print $var7 cmp $var8, "\n";
#Returns -1, 0, or 1 depending on whether the left argument is stringwise less than, equal to, or greater than the right argument.


#Assignment Operators
print "\nAssignment Operators- \n";
my $var9 = 7; #Simple Assignement (=)
print $var9 **= 2,"\n";
print $var9 += 2,"\n";
print $var9 -= 2,"\n";
print $var9 *= 2,"\n"; 
print $var9 /= 2,"\n";
print $var9 %= 2,"\n";

#Increment and Decrement Operator
print "Increment and Decrement Operators- \n";
print $var9++,"\n"; #Post-increment
print ++$var9,"\n"; #Pre-increment
print $var9--,"\n"; #Post-decrement
print --$var9,"\n"; #Pre-decrement


#Bitwise Operators
print "\nBitwise Operators- \n";
my $var10 = 3;
my $var11 = 9;
print $var10 & $var11,"\n"; #AND
print $var10 | $var11,"\n"; #OR
print $var10 ^ $var11,"\n"; #XOR
print ~$var10,"\n"; #NOT // gives a very large o/p because 3 is considered as an unsigned 64 bit integer
print $var10<<1,"\n"; #Left shift
print $var10>>3,"\n"; #Right shift


#Logical Operators
#The &&/and operator returns the second operand if the first operand is true (non-zero, non-undef), otherwise, it returns the first operand.
#The ||/or operator returns the first operand if it is true (non-zero and non-undef), or the last operand if the first one is false (zero, empty string, or undef)
#The !/not operator negates a boolean value. If the value is true(non zero), it returns false; if the value is false, it returns true.
print "\nLogical Operators- \n";
my $var12 = 13;
my $var13 = "P";
print $var12 && $var13, "\n"; 
print $var12 || $var13, "\n";
print !$var12, "\n";


#Conditional (Ternary) Operator
#condition ? value_if_true : value_if_false
print "\nConditional Operator- \n";
my $var14 = ($var12>10) ? "True" : "False";
print $var14, "\n";


#List Operators
print "\nList Operators- \n";
my @var15 = qw(This is Perl!);
my $var16 = "Perl";
push @var15, "Yay!"; #Adds elements to the end
print("@var15\n");
pop @var15; #Removes the last element
print("@var15\n");
unshift (@var15, "Yay!"); #Adds elements to the start
print("@var15\n");
shift @var15; #Removes the first element
print("@var15\n");
my @var17 = reverse @var15; #Reverses the order of a list or the characters in a string
print @var17, "\n";
my $var18 = reverse $var16;
print $var18, "\n";
my $var19 = "clementinen,banana,dates,apple"; 
my @var20 = split(",",$var19); #Splits a string into a list based on a delimiter(here ,)
print "$var20[2] \n";
print "@var20 \n";
my @var21 = split(",",$var19,2); # To limit the splits. Perl will stop the splitting after the second element 
print @var21, "\n";
my @var22 = join(",", @var20); #Joins elements of a list into a single string with a separator(here ,)
print @var22,"\n";
my @var23 = sort @var20; # Sorts a list in ascending order (custom sorting can be done)
print @var23,"\n"; 
my @var24 = grep{/a/}@var20; #Filters elements of a list based on a condition (here it filters all the elements whih have a)
print "@var24 \n";