print "Program to calculate mononucleotide frequency\n\n";
print "Enter a DNA sequence:\n";
$seq = <STDIN>;
chomp ($seq);
$seq = uc($seq);
$seq = reverse $seq;
$length = length($seq);
$i=0; 
@arrSeq = ();

#can also use split function

while($i<$length)
  { 
   $temp=chop($seq);
   if($temp eq'A'||$temp eq'T'||$temp eq'G'||$temp eq'C')
   {
    push(@arrSeq,$temp);
    $i++;
   }
    else
   {
    print "You have entered invalid sequence\n";
    goto end;
   }
  }
print "\nYou have entered:\n@arrSeq \n";

#calculation of nucleotides

$a=0;
$t=0;
$g=0;
$c=0;

foreach $char (@arrSeq)
  {
   $a++ if($char eq 'A');
   $t++ if($char eq 'T');
   $g++ if($char eq 'G');
   $c++ if($char eq 'C');  
  }
print"\n";
print ("Frequency of A is $a of $length i.e ",($a/$length)*100,"%\n");
print ("Frequency of T is $t of $length i.e ",($t/$length)*100,"%\n");
print ("Frequency of G is $g of $length i.e ",($g/$length)*100,"%\n");
print ("Frequency of C is $c of $length i.e ",($c/$length)*100,"%\n");

end:
