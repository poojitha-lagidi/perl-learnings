#!D:\PERL\perl\bin -w #shebang line

#Description :: First Perl Program
#Author :: Poojitha Lagidi

use strict;

=comment
this is a block comment.
the identifier (here comment) is used to indicate the start of the comment. identifier can be anything but it is better to stick to standard identifiers like begin comment, for comment, etc.
(=cut) is only used to terminate the section
# is used for single line comments
=cut


#Scalars - These start with $
my $var1 = 10; 
my $var2 = 0x15;
my $var3 = 0.105;
my $var4 = 'P';
my $var5 = "Perl";
print ("$var1 \n$var2 \n$var3 \n$var4 \n$var5"); 


#Arrays - These start with @
my @arr1 = (1,2,3);
my @arr2 = (2,4,6..10); #using range operator
my @arr3 = ("a", "b", "c");
my @arr4 = ("a", "b".."e"); #using range operator
print ("@arr1 \n@arr2 \n@arr3 \n@arr4 \n");
my @arr5 = qw(This is a quote-word); #quote word
print"$arr5[3]\n"; # using $ because we are printing a scalar value
my @arr6 = qw(a b c d e);
print "$arr6[-1] \t$arr6[-3] \t$arr6[3]\n";
my @arr7 = (3, "Perl", 4.01); #Combination of different scalars
my @arr8 = (@arr7, "Perl2.0", 0x27); #Concatenation of arrays
print "@arr7 \n@arr8 \n";
#Array Operations
push @arr8, 3.14; #Adds elements to the end
print("@arr8\n");
pop @arr8; #Removes the last element
print("@arr8\n");
unshift (@arr8, 0x25); #Adds elements to the start
print("@arr8\n");
shift @arr8; #Removes the first element
print("@arr8\n");


#Hash - These start with %
my %hash1 = (apple => "red", banana => "yellow", clementinen => "orange");
print "$hash1{apple} \t$hash1{banana} \t$hash1{clementinen}\n"; 
$hash1{apple} = "green";
print "$hash1{apple}"; 