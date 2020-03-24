#!/usr/bin/perl
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


# This example is the base URL for Ticket Create
my $CreateControllerAndRequest = '/Webservice/GenericTicketConnectorREST/Ticket';
my $n0=$ARGV[0];
my $n1=$ARGV[1];
my $n2=$ARGV[2];
my $n3=$ARGV[3];
my $n4=$ARGV[4];
my $n5=$ARGV[5];
my $n6=$ARGV[6];
my $n7=$ARGV[7];
my $n8=$ARGV[8];
my $n9=$ARGV[9];
my $n10=$ARGV[10];
my $n11=$ARGV[11];



my $number_args = $#ARGV + 1; 

if ($number_args != 12) {  
    print "Wrong entry. Please follow the defined order.\n
	  UserLogin => agent login,
# to be filled with valid agent login
Password => some password,
# to be filled with valid agent password

Ticket
=> {
Title
=> ticket title,
Queue
=> queue,
Lock
=> lock,
Type
=> type of ticket,
State
=> state of ticket,
Priority
=> priority,
Owner
=> owner of ticket,
CustomerUser => customer user,
},
Article => {
Subject
=> subject of ticket,
Body
=> body of ticket,\n

Sample - ";  
    exit;  
}  



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

my $CreateJSONParams = encode_json $CreateOrUpdateParams;
my @CreateRequestParam = (
$CreateControllerAndRequest,
$CreateJSONParams
);
# We have to use REST-POST requests in order to send UserLogin and Password correctly
# though other REST methods would fit better.
$RestClient->POST(@CreateRequestParam);
# If the host isn't reachable, wrong configured or couldn't serve the requested page:
my $CreateResponseCode = $RestClient->responseCode();
if ( $CreateResponseCode ne '200' ) {
print "Create request failed, response code was: $CreateResponseCode\n";
}
else {
# If the request was answered correctly, we receive a JSON string here.
my $ResponseContent = $RestClient->responseContent();
my $Data = decode_json $ResponseContent;
# Just to print out the returned Data structure:
use Data::Dumper;
print "Create Response was:\n";
print Dumper($Data);
}
