# OTRS config file (automatically generated)
# VERSION:1.1
package Kernel::Config::Files::ZZZACL;
use strict;
use warnings;
no warnings 'redefine'; ## no critic
use utf8;
sub Load {
    my ($File, $Self) = @_;

# Created: 2020-02-14 06:23:50 (root)
# Changed: 2020-03-12 07:15:47 (root)
$Self->{TicketAcl}->{'Activity'} = {
  'Possible' => {},
  'PossibleAdd' => {},
  'PossibleNot' => {
    'ActivityDialog' => [
      'ActivityDialog-329232cb45ef48899f275b94c644e8b2'
    ]
  },
  'Properties' => {},
  'PropertiesDatabase' => {
    'DynamicField' => {
      'DynamicField_Status' => [
        'Hr Approve'
      ]
    },
    'Process' => {
      'ActivityEntityID' => [
        'Activity-aa3ece052c2ad7d5af08982ae4314ba9'
      ],
      'ProcessEntityID' => [
        'Process-f70820447c08a4831bae7d1276eccbaf'
      ]
    }
  },
  'StopAfterMatch' => 0
};

# Created: 2020-02-26 05:49:43 (root)
# Changed: 2020-03-06 09:17:03 (root)
$Self->{TicketAcl}->{'CategoryHW'} = {
  'Possible' => {},
  'PossibleAdd' => {},
  'PossibleNot' => {
    'Ticket' => {
      'DynamicField_SubCategory' => [
        'Apache',
        'MySQL'
      ]
    }
  },
  'Properties' => {
    'DynamicField' => {
      'DynamicField_Categories' => [
        'Hardware'
      ]
    },
    'Ticket' => {
      'DynamicField_Categories' => [
        'Hardware'
      ]
    }
  },
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

# Created: 2020-02-19 07:21:37 (HManager)
# Changed: 2020-03-06 09:17:20 (root)
$Self->{TicketAcl}->{'CategorySW'} = {
  'Possible' => {},
  'PossibleAdd' => {},
  'PossibleNot' => {
    'Ticket' => {
      'DynamicField_SubCategory' => [
        'Router',
        'Server'
      ]
    }
  },
  'Properties' => {
    'DynamicField' => {
      'DynamicField_Categories' => [
        'Software'
      ]
    },
    'Ticket' => {
      'DynamicField_Categories' => [
        'Software'
      ]
    }
  },
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

    return;
}
1;
