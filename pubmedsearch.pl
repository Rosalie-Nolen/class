#This script gets the pubmed abstracts for a given term
use LWP::Simple;

unlink "abstracts.txt";

#search term to find 
$search_term = "coronavirus SARS";

#replace space with + which creates the correct boolean operator format with two seperate strings. This is technically not necessary for this script but was addded as a useful skill to learn
$search_term =~ s/\s/+/g; 

print $search_term . "\n";

#maximum number of results to retrieve
$retmax = 10;

#base url
$base = 'https://eutils.ncbi.nlm.nih.gov/entrez/eutils/';

#set the database to search 
$db_name = 'pmc';

#generate the query URL
$url = $base."esearch.fcgi?db=$db_name&retmax=$retmax&term=$search_term";
print $url . "\n";

#submit the search and retrieve XML-based results
$esearch_result=get($url);
#print $esearch_result

#extract paper IDs using match regex.anything*anytime globally 
@ids = ($esearch_result =~ m|.*<Id>(.*)</Id>.*|g);

foreach $id (@ids)
    {
    print "$id\n";
    #get abstract for each pubmed id
    $fetchedurl = $base."efetch.fcgi?db=pubmed&id=$id&retmode=text&rettype=abstract";
    #print $fetchedurl;
    #open a file for appending the output 
    open(OUTFILE,'>>','abstracts.txt');
    #get the results and print the filehandle 
    print OUTFILE get($fetchedurl);
    sleep 1;
    #close file 
    close OUTFILE;
    }  
