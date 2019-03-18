print "\n\t\t\t\t****WELCOME****\n";
print "This program calculates the total moleculat weight of your protein sequence\n\n";

again:
up:

print "Press '1' for giving input from keyboard.\nPress '2' for giving an input file.\n";
$opn = (<STDIN>);
chomp $opn;

if ($opn eq '1')
	{
	 print "\nENTER YOUR PROTEIN SEQUENCE:\n";
	 $input = <STDIN>;
	 chomp $input;
	 $input = uc $input;
	}
elsif ($opn eq '2')
	{
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
	}
else
	{
	 print "\n!!! abbe gawar achhe se instruction padh le !!!\n\n";
	 goto up;
        }
print "\nCalculating....\n";
sleep (2);


%molwt = 
('A',89.1,'R',174.2,'N',132.1,'D',133.1,'C',121.2,'E',147.1,'Q',146.2,'G',75.1,'H',155.2,'I',131.2,
'L',131.2,'K',146.2,'M',149.2,'F',165.2,'P',115.1,'S',105.1,'T',119.1,'W',204.2,'Y',181.2,'V',117.1);

@seq = split('',$input);

unless ($input =~ /([^ARNDCEQGHILKMFPSTWYV])/)
	
	{
	$totalwt = 0;
	foreach (@seq)
		{
       	         $totalwt += $molwt{$_};
         	}
	print "\nTotal molecular is weight is $totalwt\n";
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
         else {print "\n!!!abbe gawar achhe se instruction padh le!!!\n\n";goto repeat;}
         }

end:


