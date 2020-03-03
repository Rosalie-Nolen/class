<?php

#Author- Rosalie Nolen
#print "Hello world\n";

#variable 
$DNA = 'AGCTTACGT';
$DNA2 = 'TTAGCTAAA';
print "here are the original DNA fragments:\n\n";
print $DNA."\n";
print $DNA2."\n\n";

$DNA3 = "$DNA$DNA2";
print "here is the concatentation of the first two fragments: \n\n"; 
print $DNA3."\n\n";

#Transcribe DNA to RNA 
$RNA = $DNA3;
$RNA = str_replace("T","U",$RNA); 
print "Here is the concatenated fragment translated to RNA \n\n";
print $RNA."\n";

?> 
