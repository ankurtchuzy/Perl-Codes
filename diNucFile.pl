print "Program to calculate dinucleotide frequency\n\n";
print "Enter a file name with sequence:\n";

$file = <STDIN>;
chomp $file;

open (SEQ,"<$file");

$input = '';
while (<SEQ>)
  {
   chomp $_;
   $input = $input.$_;
  }
   

$input = uc($input);
$len = length ($input);
$i=0;

@arr = split ('',$input);

print "\nYou have entered: \n@arr\n";

#calculation of frequency

while ($i<$len)
  {
   $aa++ if ($arr[$i].$arr[$i+1] eq 'AA');
   $at++ if ($arr[$i].$arr[$i+1] eq 'AT');
   $ag++ if ($arr[$i].$arr[$i+1] eq 'AG');
   $ac++ if ($arr[$i].$arr[$i+1] eq 'AC');
   $ta++ if ($arr[$i].$arr[$i+1] eq 'TA');
   $tt++ if ($arr[$i].$arr[$i+1] eq 'TT');
   $tg++ if ($arr[$i].$arr[$i+1] eq 'TG');
   $tc++ if ($arr[$i].$arr[$i+1] eq 'TC');
   $ga++ if ($arr[$i].$arr[$i+1] eq 'GA');
   $gt++ if ($arr[$i].$arr[$i+1] eq 'GT');
   $gg++ if ($arr[$i].$arr[$i+1] eq 'GG');
   $gc++ if ($arr[$i].$arr[$i+1] eq 'GC');
   $ca++ if ($arr[$i].$arr[$i+1] eq 'CA');
   $ct++ if ($arr[$i].$arr[$i+1] eq 'CT');
   $cg++ if ($arr[$i].$arr[$i+1] eq 'CG');
   $cc++ if ($arr[$i].$arr[$i+1] eq 'CC');

   $i++;
  }

open (OUT,">result.txt");

print "\n";
print OUT ("Frequency of AA is $aa \n") if($aa!=0);
print OUT ("Frequency of AT is $at \n") if($at!=0);
print OUT ("Frequency of AG is $ag \n") if($ag!=0);
print OUT ("Frequency of AC is $ac \n") if($ac!=0);
print OUT ("Frequency of TA is $ta \n") if($ta!=0);
print OUT ("Frequency of TT is $tt \n") if($tt!=0);
print OUT ("Frequency of TG is $tg \n") if($tg!=0);
print OUT ("Frequency of TC is $tc \n") if($tc!=0);
print OUT ("Frequency of GA is $ga \n") if($ga!=0);
print OUT ("Frequency of GT is $gt \n") if($gt!=0);
print OUT ("Frequency of GG is $gg \n") if($gg!=0);
print OUT ("Frequency of GC is $gc \n") if($gc!=0);
print OUT ("Frequency of CA is $ca \n") if($ca!=0);
print OUT ("Frequency of CT is $ct \n") if($ct!=0);
print OUT ("Frequency of CG is $cg \n") if($cg!=0);
print OUT ("Frequency of CC is $cc \n") if($cc!=0);
  


