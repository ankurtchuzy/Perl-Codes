print("Hello user\nThis is a program to check if you have entered a palindrome:\n\n");
print("Enter a palindrome:\n");
$input = <>;
chomp($input);
$reverse =reverse($input);

print"\n$input\n";
print"$reverse\n\n";

if ($input eq $reverse)
	{
	 print"$input is a palindrome\n";
	}
else
	{
	 print"Sorry it is not a palindrome\n";
	}
