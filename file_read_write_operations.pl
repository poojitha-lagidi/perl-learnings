#!D:\PERL\perl\bin -w 

#Description :: Perl File Read and Write Operations
#Author :: Poojitha Lagidi

use strict;
use Getopt::Long;

my $input_file;
my $output_file;
my @input_file_details;
GetOptions("inputs=s"=>\$input_file, "output=s"=>\$output_file);
#Method 1
#Reading from file
if(-e $input_file) {
	open(INPUT_FILE,'<',$input_file) or die "Cannot open $input_file for reading: $!\n";
	@input_file_details = <INPUT_FILE>;
	close INPUT_FILE;
} else {
	print "$input_file doesn't exist\n";
	exit;
}
print "@input_file_details\n";
#Writing to a file 
open (OUTPUT_FILE,'>',$output_file) or die "Cannot open $output_file for writing: $!\n";
print OUTPUT_FILE @input_file_details,"\n";
close OUTPUT_FILE;


#Method 2 : Reading and writing Using hard-coded file path
my $input_file_h = 'D:\PERL\perl_programs\input.h.txt'; #Location of input file 
my $output_file_h = 'D:\PERL\perl_programs\output.h.txt'; #Location of output file
open (INPUT_FILE_H,'<',$input_file_h) or die "Cannot open file\n";
open (OUTPUT_FILE_H,'>',$output_file_h) or die "Cannot open file\n";
print <INPUT_FILE_H>;
while (<INPUT_FILE_H>) {
        print OUTPUT_FILE_H $_;
    }close INPUT_FILE_H;
close OUTPUT_FILE_H;


#Appending
open (OUTPUT_FILE,'>>',$output_file) or die "Cannot open file\n";
print OUTPUT_FILE @input_file_details, "\n";
close OUTPUT_FILE;

#Read_Write
my $file_rw = 'D:\PERL\perl_programs\file.rw.txt';
open (INPUT_FILE_RW,'+<',$file_rw) or die "Cannot open file\n";
my @file_rw_details = <INPUT_FILE_RW>; #Reading the file
print "@file_rw_details\n";
seek(INPUT_FILE_RW, 0, 2); #Adding data at the end of the file
print INPUT_FILE_RW "This is the new line\n"; #Writing to the file
close INPUT_FILE_RW;