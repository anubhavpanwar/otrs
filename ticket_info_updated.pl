use strict;

use warnings;

use utf8;


use LWP::UserAgent;
 
   use HTTP::Request::Common;
 
## nofilter(TidyAll::Plugin::OTRS::Perl::Dumper)


# use ../ as lib location
use File::Basename;

use FindBin qw($RealBin);

use lib dirname($RealBin);


use JSON;
use REST::Client;



# This is the HOST for the web service the format is:
# <HTTP_TYPE>:://<OTRS_FQDN>/nph-genericinterface.pl
my

 $Host = 'http://localhost/otrs/nph-genericinterface.pl';


my $RestClient = REST::Client->new(
    {
        host => $Host,
    }
);
 

my $n0=$ARGV[0];

my $n1=$ARGV[1];

my $n2=$ARGV[2];




# These are the Controllers and Providers the format is:
# /Webservice/<WEB_SERVICE_NAME>/<RESOURCE>/<REQUEST_VALUE>

# or
# /WebserviceID/<WEB_SERVICE_ID>/<RESOURCE>/<REQUEST_VALUE>
#
# See the documentation on how to setup Providers.
#

# This example will retrieve the Ticket with the TicketID = 1 (<REQUEST_VALUE>)



my $GetControllerAndRequest = '/Webservice/GenericTicketConnectorREST/Ticket/'.$n0;





# TicketGet Example
# See the documentation of OTRSGenericInterfaceREST on how to setup
#   - webservice
#   - transport
#   - operations
my 

$GetParams = {
    UserLogin => $n1,     
    Password  => $n2,  
};

 

# Build GetParams as part of the URL for REST-GET requests
my 

$QueryParams = $RestClient->buildQuery( %{$GetParams} );

$GetControllerAndRequest .= $QueryParams;

$RestClient->GET($GetControllerAndRequest);


my $GetResponseCode = $RestClient->responseCode();


if ( $GetResponseCode ne '200') 
 {
    print "Get request failed, response code was: $GetResponseCode\n";
}
else {

  


my $ResponseContent = $RestClient->responseContent();
	


my $Data = decode_json $ResponseContent;


use Data::Dumper;





    







my $result = Dumper($Data);
#print $result;






# my $host;
my $queue="abc";
my $numbers;
for  my $host (@{ $Data->{'Ticket'}}){
   $queue =  $host->{'Queue'};
   }
print $queue;



    

 
 my $apikey = 'Fkmqgt6omYo-12ywR5ym40e8KBpY8Tib8NJ7u7rx5b'; 

 my $sender = "TXTLCL";

if($queue eq "Raw" ){
 $numbers = "9810583629";
}
elsif($queue eq "Hardware Manager"){
$numbers="8376061876" ;
}
my $message = "ticket is generated";
my $ua = LWP::UserAgent->new();

 
    my $res = $ua->request
   (
     POST 'https://api.textlocal.in/send/?',

   Content_Type  => 'application/x-www-form-urlencoded',

   content => [
    		'apikey'	=> $apikey,

'numbers'	=> $numbers,
    	
'message'	=> $message,
    
	'sender'	=> $sender
    		]
    );
     
  
  if ($res->is_error) { die "HTTP Error\n"; }
 
  print "Response:\n\n" . $res->content . "\n\n";



}

