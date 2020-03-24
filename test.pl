#!/usr/bin/perl
use warnings;
use strict;

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

   UserLogin => $lines[0],       # to be filled with valid agent login
   Password  => $lines[1],    # to be filled with valid agent password
   

    

