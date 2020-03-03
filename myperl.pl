#Concatenate DNA
$DNA = 'AGCTAGCTAGCTGTTTTACG';
$DNA2 = 'CGGGTATGTAAT';
print "Here are the original two DNA fragments: \n\n";
print $DNA, "\n";
print $DNA2, "\n\n";

$DNA3 = "$DNA$DNA2";
print "Here is the concatenation of the first two fragments: \n\n";
print $DNA3, "\n"; 

#DNA to RNA
$DNA = 'AGTATCGTA';
print "Here is the starting DNA:\n\n";
print "$DNA\n\n";
$RNA = $DNA; 
$RNA =~ s/T/U/g;
print "Here is the RNA:\n\n";
print "$RNA\n";
