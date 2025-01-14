#!D:\PERL\perl\bin -w 

#Description :: Excel(.xls) Read and Write Operations using Perl
#Author :: Poojitha Lagidi

use strict;
use Getopt::Long;
use Spreadsheet::WriteExcel;
use Spreadsheet::ParseExcel;

#Note: It is not possible to write to an existing .xls file without overwriting its content. This file demonstartes creating a new Excel file and reading from it.
#Note: Writing and Reading from the same Excel file is not possible when the Excel file is open 

my $out = "D:\\PERL\\perl_programs\\OutExcel.xls";
my $workbook = Spreadsheet::WriteExcel->new($out) or die $!; #Creating a new Workbook in the path stored by $out
#Creating new Worksheets
my $sheet1 = $workbook->addworksheet("Names");
my $sheet2 = $workbook->addworksheet("Place");
#Writing to the sheets
$sheet1->write(0,0,"Hello");
$sheet1->write(0,1,"Perl");
$sheet1->write(1,0,1);
$sheet1->write(1,1,19.07);
$sheet2->write(10,0,5);
$sheet2->write(15,15,0.2);
$sheet2->write(20,3,'=SUM(A11,P16)');
$sheet2->write(3,7,"Perl it is");
$workbook->close();

#Reading from the excel sheet
my $read_workbook = $out;
my $excel1 = Spreadsheet::ParseExcel->new(); #Creating Parser object
my $excel = $excel1->parse($read_workbook); #Parse Excel file
foreach my $sheet (@{$excel->{Worksheet}}){ #Reading through each sheet
	#Getting Minimum and Maximum Row and Column values
	my $row_min = $sheet->{MinRow}; 
	my $row_max = $sheet->{MaxRow};
	my ($col_min, $col_max) = $sheet->col_range();
	my $sheet_name = $sheet->{Name}; #Reading sheet name
	print "Minimum Row of $sheet_name = $row_min\nMaximum Row of $sheet_name = $row_max\n";
	print "Minimum Column of $sheet_name = $col_min\nMaximum Column of $sheet_name = $col_max\n";
	my $row_handle = $sheet->{Cells}[0][0]; #Reading a particular cell value
	my $row_val = $row_handle->{Val}; 
	if(defined($row_val) ne ""){
		print "Cell Value at [0][0] is $row_val\n";
		}
}