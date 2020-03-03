use LWP::Simple; 

#query for nucleotide ID 
$gi_list = '244775906, 224465210, 50978625, 9507198';

#base url 
$base = 'https://eutils.ncbi.nlm.nih.gov/entrez/eutils/';
$url = $base . "efetch.fcgi?db=nucleotide&id=$gi_list&rettype=acc";

#post
$output = get($url);

#print
print "$output";
