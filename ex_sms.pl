 #!/usr/bin/perl
     
    use strict;
    use LWP::UserAgent;
    use HTTP::Request::Common;
    my $n0=$ARGV[0];
my $n1=$ARGV[1]; 
    my $apikey = 'YFVWSAxaA/g-fB2vKsd55zttXUaL34HpEtXaBVvO6u'; 
    my $sender = "TXTLCL";
    my %numbers = ('Raw'=>"9810583629" ,
	           'L1 support'=>'8376061876') ;

    my $message = "ticket no - $n0 is generated";
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
    # Displaying the passed list elements  
    foreach my $key (keys %Hash_var)  
    {  
	if($key = 'L1 support'){
        $value = $Hash_var{$key};
	}
	         
    }
	return $value;  
}  


