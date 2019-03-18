print "\t\t\t\t\t********\n";
print "This is a program gives amino acids coordinates and the sequence from PDB file\n\n";
print "\t\t\t\t\t********\n";

again:

print "\nENTER YOUR FILE NAME:\n";
$name = <STDIN>;
chomp $name;
open (IN,"<$name") or (die $!);
@seq=();
print "ATOMIC COORDINATES:";
while(<IN>)
	 {
	  $_ =~ /ATOM\s+\d+\s+\w+\s+(\w{3})\s\w\s+\d+\s+(\d+.\d+)\s+(\d+.\d+)\s+(\d+.\d+)\s+/;
          print "x $2 y $3 z $4\n";
         }

