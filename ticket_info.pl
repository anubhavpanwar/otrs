use strict;
use warnings;
use utf8;

## nofilter(TidyAll::Plugin::OTRS::Perl::Dumper)

# use ../ as lib location
use File::Basename;
use FindBin qw($RealBin);
use lib dirname($RealBin);

use JSON;
use REST::Client;

# This is the HOST for the web service the format is:
# <HTTP_TYPE>:://<OTRS_FQDN>/nph-genericinterface.pl
my $Host = 'http://localhost/otrs/nph-genericinterface.pl';

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
my $GetParams = {
    UserLogin => $n1,       # to be filled with valid agent login
    Password  => $n2,    # to be filled with valid agent password
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

	use Data::Dumper;
	#open(FHW,">","/opt/otrs/a.txt");

    # Just to print out the returned Data structure:
    
    #print "Get response was:\n";
    	#print Dumper($Data);
#my $action = {};
my $result = Dumper($Data);
#push(@{$action->{'Ticket'}},
#print FHW $result;
#print $result;


#print "$Data->{'Ticket'}->{'Queue'}";
for my $host (@{ $Data->{Ticket}}){
    print "host: $host->{Queue}\n";
}



#close(FHW);
}

