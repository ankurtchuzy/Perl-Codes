print "\t\t\t\t********\n";
print "This is a program to calculates amino acids groups from given FASTA format\n\n";
print "\t\t\t\t********\n";

again:

print "\nENTER YOUR FILE NAME:\n";
$name = <STDIN>;
chomp $name;
open (IN,"<$name") or (die $!);
$temp ='';
@lines = ();
#to read FASTA files with skipped first line      	
while(<IN>)
	 {
	  chomp $_;
	  push (@lines,$_); 
         }
shift (@lines);
$input = join('',@lines);
$input = uc $input;



print "\nCalculating....\n";
sleep (2);

@seq = split('',$input);

$np= 0;
$po= 0;
$ar= 0;
$ac= 0;
$ba= 0;

unless ($input =~ /([^ARNDCEQGHILKMFPSTWYV])/)
	
	{
	foreach (@seq)
		{
       	         $np++ if $_ =~/[AGILMV]/;
		 $po++ if $_ =~/[NCQPST]/;
		 $ar++ if $_ =~/[FWY]/;
		 $ac++ if $_ =~/[DE]/;
		 $ba++ if $_ =~/[HKR]/;
         	}
	print "\nTotal amino acids in sequence: ",scalar@seq,"\n\n";
	print "Non-polar amino acids: $np\n";
	print "Polar amino acids:     $po\n";
	print "Aromatic amino acids:  $ar\n";
	print "Acidic amino acids:    $ac\n";
	print "Basic amino acids :    $ba\n";
	}

else
	{
         print "Bad protein sequence with '$1', Try another protein\n\n";
         repeat:
         print "Do you wish to try again??(Y/N)\n";
         $opt = <STDIN>;
         chomp $opt;
         $opt = uc $opt;             
         if ($opt eq 'Y'){print "\n";goto again;}
         if ($opt eq 'N'){print "Thankyou for using :)\n";goto end;} 
         else {print "\n!!! oops try again!!!\n\n";goto repeat;}
         }

end:
close IN;
