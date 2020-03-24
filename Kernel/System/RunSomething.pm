# --
# Kernel/System/Ticket/Event/RunSomething.pm - event module
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::System::RunSomething;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.2 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

   

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

   

    
    
    eval 'exec $Param{Command}';

    return 1;
}

1; 
