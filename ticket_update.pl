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
# This example will update the Ticket with the TicketID = 1 (<REQUEST_VALUE>)
my $UpdateControllerAndRequest = '/Webservice/GenericTicketConnectorREST/Ticket/'.$n0;
my $CreateOrUpdateParams = {
UserLogin => $n0,
# to be filled with valid agent login
Password => $n1,
# to be filled with valid agent password

Ticket
=> {
Title
=> $n2,
Queue
=> $n3,
Lock
=> $n4,
Type
=> $n5,
State
=> $n6,
Priority
=> $n7,
Owner
=> $n8,
CustomerUser => $n9,
},
Article => {
Subject
=> $n10,
Body
=> $n11,
ContentType => 'text/plain; charset=utf8',
},
};


my $UpdateJSONParams = encode_json $CreateOrUpdateParams;
my @UpdateRequestParam = (
$UpdateControllerAndRequest,
$UpdateJSONParams
);
# We have to use REST-PATCH requests in order to send UserLogin and Password correctly
# though other REST methods would fit better.
$RestClient->PATCH(@UpdateRequestParam);
# If the host isn't reachable, wrong configured or couldn't serve the requested page:
my $UpdateResponseCode = $RestClient->responseCode();
if ( $UpdateResponseCode ne '200' ) {
print "Update request failed, response code was: $UpdateResponseCode\n";
}
else {
# If the request was answered correctly, we receive a JSON string here.
my $ResponseContent = $RestClient->responseContent();
my $Data = decode_json $ResponseContent;
# Just to print out the returned Data structure:
use Data::Dumper;
print "Update response was:\n";
print Dumper($Data);
}

