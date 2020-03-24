use strict;
    use LWP::UserAgent;
    use HTTP::Request::Common;
use warnings;
use utf8;
use File::Basename;
use FindBin qw($RealBin);
use lib dirname($RealBin);
use Data::Dumper;

use JSON;
use REST::Client;
 my $n0=$ARGV[0];
my $n1=$ARGV[1]; 
my $queue="abc";
my $priority="not Defined";    
my $title=" ";





## nofilter(TidyAll::Plugin::OTRS::Perl::Dumper)

# use ../ as lib location


# This is the HOST for the web service the format is:
# <HTTP_TYPE>:://<OTRS_FQDN>/nph-genericinterface.pl
my $Host = 'http://localhost/otrs/nph-genericinterface.pl';

my $RestClient = REST::Client->new(
    {
        host => $Host,
    }
);
 
#my $n0=$ARGV[0];
#my $n1=$ARGV[1];
#my $n2=$ARGV[2];


# These are the Controllers and Providers the format is:
# /Webservice/<WEB_SERVICE_NAME>/<RESOURCE>/<REQUEST_VALUE>
# or
# /WebserviceID/<WEB_SERVICE_ID>/<RESOURCE>/<REQUEST_VALUE>
#
# See the documentation on how to setup Providers.
#
# This example will retrieve the Ticket with the TicketID = 1 (<REQUEST_VALUE>)

my $GetControllerAndRequest = '/Webservice/GenericTicketConnectorREST/Ticket/'.$n1;



# TicketGet Example
# See the documentation of OTRSGenericInterfaceREST on how to setup
#   - webservice
#   - transport
#   - operations

my $filename = '/opt/otrs/creds.txt';
my $handle;
unless (open $handle, "<:encoding(utf8)", $filename) {
   print STDERR "Could not open file '$filename': $!\n";
   # we return 'undefined', we could also 'die' or 'croak'
   return undef
}
chomp(my @lines = <$handle>);
unless (close $handle) {
   # what does it mean if close yields an error and you are just reading?
   print STDERR "Don't care error while closing '$filename': $!\n";
} 

my $GetParams = {



   UserLogin => "$lines[0]",       # to be filled with valid agent login
   Password  => "$lines[1]",    # to be filled with valid agent password
   
};

 
# Build GetParams as part of the URL for REST-GET requests
my $QueryParams = $RestClient->buildQuery( %{$GetParams} );
$GetControllerAndRequest .= $QueryParams;

$RestClient->GET($GetControllerAndRequest);

my $GetResponseCode = $RestClient->responseCode();

if ( $GetResponseCode ne '200' ) {
    print "Get request failed, response code was: $GetResponseCode\n";
}
else {

    # If the request was answered correctly, we receive a JSON string here.
    my $ResponseContent = $RestClient->responseContent();
	

    my $Data = decode_json $ResponseContent;

	
	open(FHW,">","/opt/otrs/a.txt");

    # Just to print out the returned Data structure:
    
    print "Get response was:\n";
    	print FHW Dumper($Data) ;
	close(FHW);
my $result = Dumper($Data);

for my $host (@{ $Data->{Ticket}}){
    $queue = $host->{Queue};
    $priority = $host->{Priority};
    $title = $host->{Title};
}
print "$queue\n";



}

my $apikey = 'Fkmqgt6omYo-12ywR5ym40e8KBpY8Tib8NJ7u7rx5b'; 
    my $sender = "TXTLCL";

open my $fh, '<', '/opt/otrs/Queues.txt' or die "Unable to open file:$!\n";

#my %hash = map { split /=|\s+/; } <$fh>;



    my %numbers = map { split /=|\s+/; } <$fh>;


close $fh;
print "$_ => $numbers{$_}\n" for keys %numbers;



    my $message = "A ticket with $priority priority and id $n1 is generated whose subject is $title ";
    my $ua = LWP::UserAgent->new();
     
    my $res = $ua->request
    (
     POST 'https://api.textlocal.in/send/?',
     Content_Type  => 'application/x-www-form-urlencoded',
     content => [
    		'apikey'	=> $apikey,
    		'numbers'	=> Number_Hash(%numbers),
    		'message'	=> $message,
    		'sender'	=> $sender
    		]
    );
     
    if ($res->is_error) { die "HTTP Error\n"; }
    print "Response:\n\n" . $res->content . "\n\n";

# Subroutine definition  
sub Number_Hash  
{  
      
    # Hash variable to store  
    # the passed arguments  
    my (%Hash_var) = @_;  
    my $value = 1;
    my @values = (); 
    my $value_ref = 1;    
    # Displaying the passed list elements  
    foreach my $key (keys %Hash_var)  
    {  
	if($key = $queue){
        $value = $Hash_var{$key};
	



	}
	
	         
    }
	return $value;  
}


