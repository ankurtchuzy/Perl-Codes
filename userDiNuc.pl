print "***Program to calculate  AT and GC fequency***\n\n";
print "Enter a DNA sequence:";

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

end:
