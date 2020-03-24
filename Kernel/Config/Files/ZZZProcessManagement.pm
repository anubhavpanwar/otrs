# OTRS config file (automatically generated)
# VERSION:1.1
package Kernel::Config::Files::ZZZProcessManagement;
use strict;
use warnings;
no warnings 'redefine'; ## no critic
use utf8;
sub Load {
    my ($File, $Self) = @_;
$Self->{'Process'} = {
  'Process-800ac8f0fa1816f804b36d295c699eae' => {
    'ChangeTime' => '2020-02-25 10:38:27',
    'CreateTime' => '2020-02-25 09:43:37',
    'Name' => 'hardware issues',
    'Path' => {
      'Activity-9e910923017659e78cd752d4722820f3' => {},
      'Activity-c0ba154f2770af87f98f2c7e5ff577bf' => {
        'Transition-8246462fe507ef2d9ebac0116667ede9' => {
          'ActivityEntityID' => 'Activity-9e910923017659e78cd752d4722820f3',
          'TransitionAction' => [
            'TransitionAction-51a126ccb64a715a0f62b9a0ef9165d5',
            'TransitionAction-46663ab3d1804157507a74e0f5ba3b4e'
          ]
        }
      }
    },
    'StartActivity' => 'Activity-c0ba154f2770af87f98f2c7e5ff577bf',
    'StartActivityDialog' => 'ActivityDialog-bdbccaa4900ba07864604b196e0924b8',
    'State' => 'Active',
    'StateEntityID' => 'S1'
  },
  'Process-80c8e73f01252be83483ec05633e9777' => {
    'ChangeTime' => '2020-03-13 10:12:41',
    'CreateTime' => '2020-03-04 05:52:23',
    'Name' => 'Problem Management',
    'Path' => {
      'Activity-062991f5983eb8f9d582168cc60b95d8' => {
        'Transition-f9c361bfa69181dc0e9fa1343367511e' => {
          'ActivityEntityID' => 'Activity-9eee1934c2a3059d59a9c62e92c580df',
          'TransitionAction' => [
            'TransitionAction-a9b227e89162a0aba855059c641b5751',
            'TransitionAction-64178b6f446854b6a5f21d23e4c86727'
          ]
        }
      },
      'Activity-2262beb394cbe62a157d879945150114' => {
        'Transition-bb299a3e919343ead22955a09e0b9c3c' => {
          'ActivityEntityID' => 'Activity-9ed18efcb58ed323f984a7b9eb611210',
          'TransitionAction' => [
            'TransitionAction-da31599d270dfb611f654ce3bbc9ebd6',
            'TransitionAction-b390831e7a1b691a500d4572aa5ef048'
          ]
        },
        'Transition-e60a79a107f96d034eb50d79d0d00a41' => {
          'ActivityEntityID' => 'Activity-49f10c12b4ed7abc33c3f635f0d4ffca',
          'TransitionAction' => [
            'TransitionAction-0a17fa54faa0e06c609467d6180b412c'
          ]
        }
      },
      'Activity-49f10c12b4ed7abc33c3f635f0d4ffca' => {},
      'Activity-7220f234d40e47e9b8f1765ab226f0e2' => {
        'Transition-5c49ee00d808c2710c4d8c730e951f9b' => {
          'ActivityEntityID' => 'Activity-2262beb394cbe62a157d879945150114',
          'TransitionAction' => [
            'TransitionAction-b390831e7a1b691a500d4572aa5ef048',
            'TransitionAction-da31599d270dfb611f654ce3bbc9ebd6'
          ]
        }
      },
      'Activity-9ed18efcb58ed323f984a7b9eb611210' => {
        'Transition-8454ee19f9842e666c2aa191127728b3' => {
          'ActivityEntityID' => 'Activity-062991f5983eb8f9d582168cc60b95d8',
          'TransitionAction' => [
            'TransitionAction-7730c30dcf44afdfe219b6798017795a',
            'TransitionAction-da31599d270dfb611f654ce3bbc9ebd6'
          ]
        }
      },
      'Activity-9eee1934c2a3059d59a9c62e92c580df' => {
        'Transition-dd7e0d5dc5f69839dcef251b98125ed0' => {
          'ActivityEntityID' => 'Activity-49f10c12b4ed7abc33c3f635f0d4ffca',
          'TransitionAction' => [
            'TransitionAction-4eb350e29c04541349dcea017666aba0'
          ]
        },
        'Transition-e60a79a107f96d034eb50d79d0d00a41' => {
          'ActivityEntityID' => 'Activity-49f10c12b4ed7abc33c3f635f0d4ffca',
          'TransitionAction' => [
            'TransitionAction-0a17fa54faa0e06c609467d6180b412c'
          ]
        }
      }
    },
    'StartActivity' => 'Activity-7220f234d40e47e9b8f1765ab226f0e2',
    'StartActivityDialog' => 'ActivityDialog-27c39e55686f33355bfbbb77efb945b2',
    'State' => 'Active',
    'StateEntityID' => 'S1'
  },
  'Process-cd91c72ed7e4b8efc852ff830b9d6669' => {
    'ChangeTime' => '2020-02-14 06:09:08',
    'CreateTime' => '2020-02-14 06:09:08',
    'Name' => 'ticketescalation',
    'Path' => {},
    'StartActivity' => '',
    'StartActivityDialog' => '',
    'State' => 'Active',
    'StateEntityID' => 'S1'
  },
  'Process-f70820447c08a4831bae7d1276eccbaf' => {
    'ChangeTime' => '2020-03-16 10:28:23',
    'CreateTime' => '2020-02-14 06:54:37',
    'Name' => 'Request Management',
    'Path' => {
      'Activity-49f10c12b4ed7abc33c3f635f0d4ffca' => {},
      'Activity-5a23762bf10df5636ec90e20aed09de5' => {
        'Transition-3a2ae8270cb6fedbe8c26dbf19df8ce9' => {
          'ActivityEntityID' => 'Activity-9e910923017659e78cd752d4722820f3',
          'TransitionAction' => [
            'TransitionAction-8679ea06e087babf2bd31ae23fc773f1',
            'TransitionAction-a62716f45e5b5d0b0e514937c1321b15'
          ]
        }
      },
      'Activity-748dcb182a92baa521b411f3c6f6d515' => {},
      'Activity-9e910923017659e78cd752d4722820f3' => {
        'Transition-28dea20783fdcae3c7e4a5ccaa4dec5b' => {
          'ActivityEntityID' => 'Activity-aa3ece052c2ad7d5af08982ae4314ba9',
          'TransitionAction' => [
            'TransitionAction-f5480ef75fe1e29d9be624bc74e6f908',
            'TransitionAction-968061553b6987376448e5f33f945c07'
          ]
        },
        'Transition-829d519632f70450423f1edbdb078caa' => {
          'ActivityEntityID' => 'Activity-748dcb182a92baa521b411f3c6f6d515',
          'TransitionAction' => [
            'TransitionAction-0a17fa54faa0e06c609467d6180b412c',
            'TransitionAction-6891ad4d8e2f774baaa0d971818aca61'
          ]
        },
        'Transition-c1d209c61c3eb5946ec854a977f13c6a' => {
          'ActivityEntityID' => 'Activity-5a23762bf10df5636ec90e20aed09de5',
          'TransitionAction' => [
            'TransitionAction-0eb4d2c30e34c1db6605a6b6459de706',
            'TransitionAction-a0140a6c2611f8e36fa38bfe7157a9e0'
          ]
        }
      },
      'Activity-aa3ece052c2ad7d5af08982ae4314ba9' => {
        'Transition-c4c0ce0369601efab42bd9bc8da38ca7' => {
          'ActivityEntityID' => 'Activity-748dcb182a92baa521b411f3c6f6d515',
          'TransitionAction' => [
            'TransitionAction-6891ad4d8e2f774baaa0d971818aca61',
            'TransitionAction-0a17fa54faa0e06c609467d6180b412c'
          ]
        },
        'Transition-c6bb1521a2dc7b133e501e745fb7c162' => {
          'ActivityEntityID' => 'Activity-49f10c12b4ed7abc33c3f635f0d4ffca',
          'TransitionAction' => [
            'TransitionAction-da31599d270dfb611f654ce3bbc9ebd6'
          ]
        }
      }
    },
    'StartActivity' => 'Activity-5a23762bf10df5636ec90e20aed09de5',
    'StartActivityDialog' => 'ActivityDialog-593327ad982c22a9670558c8da11ff7c',
    'State' => 'Active',
    'StateEntityID' => 'S1'
  }
};

$Self->{'Process::State'} = {
  'S1' => 'Active',
  'S2' => 'Inactive',
  'S3' => 'FadeAway'
};

$Self->{'Process::Activity'} = {
  'Activity-062991f5983eb8f9d582168cc60b95d8' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-388a211cd091df70fd2b94bcfbd1d7ca'
    },
    'ChangeTime' => '2020-03-04 08:06:32',
    'CreateTime' => '2020-03-04 07:50:40',
    'ID' => 14,
    'Name' => 'Raise a change ticket'
  },
  'Activity-2262beb394cbe62a157d879945150114' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-a0236392000b4921bd46f0aef8e8048e',
      '2' => 'ActivityDialog-72aa7ddd366599879a090aaf76cb2049'
    },
    'ChangeTime' => '2020-03-12 10:43:31',
    'CreateTime' => '2020-03-04 06:14:52',
    'ID' => 12,
    'Name' => 'Assessment By Administrator'
  },
  'Activity-49f10c12b4ed7abc33c3f635f0d4ffca' => {
    'ActivityDialog' => '',
    'ChangeTime' => '2020-03-13 10:11:04',
    'CreateTime' => '2020-02-14 07:11:43',
    'ID' => 4,
    'Name' => 'Ticket Close'
  },
  'Activity-5a23762bf10df5636ec90e20aed09de5' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-593327ad982c22a9670558c8da11ff7c'
    },
    'ChangeTime' => '2020-03-12 11:42:37',
    'CreateTime' => '2020-02-14 07:03:04',
    'ID' => 2,
    'Name' => 'Raise Request'
  },
  'Activity-7220f234d40e47e9b8f1765ab226f0e2' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-27c39e55686f33355bfbbb77efb945b2'
    },
    'ChangeTime' => '2020-03-04 06:08:28',
    'CreateTime' => '2020-03-04 05:52:42',
    'ID' => 11,
    'Name' => 'Raise a ticket'
  },
  'Activity-748dcb182a92baa521b411f3c6f6d515' => {
    'ActivityDialog' => '',
    'ChangeTime' => '2020-03-13 07:16:12',
    'CreateTime' => '2020-03-13 07:16:12',
    'ID' => 16,
    'Name' => 'Close Ticket'
  },
  'Activity-7a787077c6815ec8029e0d5dfc9e25f7' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-dbeac60a802c6c41ea7ab6434ecda184'
    },
    'ChangeTime' => '2020-02-25 10:00:42',
    'CreateTime' => '2020-02-25 09:55:18',
    'ID' => 9,
    'Name' => 'ProblemInfoNetwork'
  },
  'Activity-936a68349f1e8e89b7eb750edd9444e5' => {
    'ActivityDialog' => '',
    'ChangeTime' => '2020-02-20 05:55:08',
    'CreateTime' => '2020-02-20 05:55:08',
    'ID' => 7,
    'Name' => 'Done'
  },
  'Activity-9e910923017659e78cd752d4722820f3' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-25fa1adef33d06215141fa1c7bcfe370',
      '2' => 'ActivityDialog-09060cd3798151955da19415b736a6d8',
      '3' => 'ActivityDialog-23e1b614708a19985e33ff4c8f70e78c'
    },
    'ChangeTime' => '2020-03-12 11:44:11',
    'CreateTime' => '2020-02-14 07:03:39',
    'ID' => 3,
    'Name' => 'Assement Of Request'
  },
  'Activity-9ed18efcb58ed323f984a7b9eb611210' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-cb93f0c22125ea7b5730b60647022de2',
      '2' => 'ActivityDialog-6554f552138586d3e2eac8def225ffb7'
    },
    'ChangeTime' => '2020-03-04 07:28:34',
    'CreateTime' => '2020-03-04 07:00:00',
    'ID' => 13,
    'Name' => 'Root Cause Analysis'
  },
  'Activity-9eee1934c2a3059d59a9c62e92c580df' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-040b08fbbaeba00dc936c1931132c880',
      '2' => 'ActivityDialog-2d4b32ad280c8a2ba2d9fc1a14a4bfd3'
    },
    'ChangeTime' => '2020-03-04 08:26:50',
    'CreateTime' => '2020-03-04 08:08:09',
    'ID' => 15,
    'Name' => 'Change'
  },
  'Activity-aa3ece052c2ad7d5af08982ae4314ba9' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-329232cb45ef48899f275b94c644e8b2',
      '2' => 'ActivityDialog-0a8386f056ad1507b81b1863abc9cdaa'
    },
    'ChangeTime' => '2020-03-12 11:44:42',
    'CreateTime' => '2020-02-14 07:26:43',
    'ID' => 6,
    'Name' => 'Acceptance Or Denial Of Request'
  },
  'Activity-c0ba154f2770af87f98f2c7e5ff577bf' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-bdbccaa4900ba07864604b196e0924b8'
    },
    'ChangeTime' => '2020-02-25 10:04:03',
    'CreateTime' => '2020-02-25 10:01:49',
    'ID' => 10,
    'Name' => 'ProblemInfoHardware'
  },
  'Activity-c5984a3dabbb658e0615b615a64beb44' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-6f7ce7e4dc2ab8143c2ffa3fde398be0'
    },
    'ChangeTime' => '2020-02-25 09:50:18',
    'CreateTime' => '2020-02-25 09:44:31',
    'ID' => 8,
    'Name' => 'ProblemRegister'
  },
  'Activity-f40742fe7100953345a80dac0a221d69' => {
    'ActivityDialog' => '',
    'ChangeTime' => '2020-02-14 06:10:28',
    'CreateTime' => '2020-02-14 06:10:28',
    'ID' => 1,
    'Name' => 'ticketescalation'
  }
};

$Self->{'Process::ActivityDialog'} = {
  'ActivityDialog-040b08fbbaeba00dc936c1931132c880' => {
    'ChangeTime' => '2020-03-04 09:55:57',
    'CreateTime' => '2020-03-04 08:24:47',
    'DescriptionLong' => '',
    'DescriptionShort' => 'ApproveChanges',
    'FieldOrder' => [
      'DynamicField_Status',
      'Article'
    ],
    'Fields' => {
      'Article' => {
        'Config' => {
          'CommunicationChannel' => 'Internal',
          'IsVisibleForCustomer' => '0',
          'TimeUnits' => '0'
        },
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_Status' => {
        'DefaultValue' => 'Change Approve',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '0'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'Approve Changes',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => 'Approve'
  },
  'ActivityDialog-09060cd3798151955da19415b736a6d8' => {
    'ChangeTime' => '2020-03-12 11:43:47',
    'CreateTime' => '2020-02-14 09:42:35',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Denial',
    'FieldOrder' => [
      'DynamicField_Reason',
      'DynamicField_Status'
    ],
    'Fields' => {
      'DynamicField_Reason' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => 'Deny',
        'Display' => '1'
      },
      'DynamicField_Status' => {
        'DefaultValue' => 'Hr Deny',
        'DescriptionLong' => '',
        'DescriptionShort' => 'status',
        'Display' => '0'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'Deny',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-0a8386f056ad1507b81b1863abc9cdaa' => {
    'ChangeTime' => '2020-03-16 10:26:47',
    'CreateTime' => '2020-02-14 09:49:24',
    'DescriptionLong' => '',
    'DescriptionShort' => 'approval',
    'FieldOrder' => [
      'DynamicField_Email',
      'DynamicField_Description',
      'DynamicField_Done',
      'DynamicField_Status'
    ],
    'Fields' => {
      'DynamicField_Description' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_Done' => {
        'DefaultValue' => 'ok',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '0'
      },
      'DynamicField_Email' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => 'Email',
        'Display' => '1'
      },
      'DynamicField_Status' => {
        'DefaultValue' => 'It Approve',
        'DescriptionLong' => '',
        'DescriptionShort' => 'approval',
        'Display' => '0'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'Accept',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => 'Accept'
  },
  'ActivityDialog-23e1b614708a19985e33ff4c8f70e78c' => {
    'ChangeTime' => '2020-02-20 11:54:28',
    'CreateTime' => '2020-02-20 11:54:28',
    'DescriptionLong' => '',
    'DescriptionShort' => 'More information needed',
    'FieldOrder' => [
      'DynamicField_Done',
      'DynamicField_Reason'
    ],
    'Fields' => {
      'DynamicField_Done' => {
        'DefaultValue' => 'ok',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '0'
      },
      'DynamicField_Reason' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => 'Require more info',
        'Display' => '1'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'Revert',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-25fa1adef33d06215141fa1c7bcfe370' => {
    'ChangeTime' => '2020-03-12 11:52:34',
    'CreateTime' => '2020-02-14 09:41:57',
    'DescriptionLong' => '',
    'DescriptionShort' => 'approval',
    'FieldOrder' => [
      'DynamicField_EmployeeID',
      'Article',
      'Priority',
      'DynamicField_Status'
    ],
    'Fields' => {
      'Article' => {
        'Config' => {
          'CommunicationChannel' => 'Internal',
          'IsVisibleForCustomer' => '1',
          'TimeUnits' => '0'
        },
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_EmployeeID' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => 'EmpId',
        'Display' => '1'
      },
      'DynamicField_Status' => {
        'DefaultValue' => 'Hr Approve',
        'DescriptionLong' => '',
        'DescriptionShort' => 'Status',
        'Display' => '0'
      },
      'Priority' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'Approve',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-27c39e55686f33355bfbbb77efb945b2' => {
    'ChangeTime' => '2020-03-12 10:59:24',
    'CreateTime' => '2020-03-04 05:53:27',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Ticket For Problems',
    'FieldOrder' => [
      'Type',
      'Article',
      'Priority',
      'State',
      'DynamicField_ITSMCriticality',
      'DynamicField_ITSMImpact',
      'DynamicField_AssignedTo',
      'Service',
      'SLA',
      'DynamicField_Description'
    ],
    'Fields' => {
      'Article' => {
        'Display' => '1'
      },
      'DynamicField_AssignedTo' => {
        'DefaultValue' => 'Administrator',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_Description' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_ITSMCriticality' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_ITSMImpact' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'Priority' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      },
      'SLA' => {
        'DefaultValue' => '5',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '0'
      },
      'Service' => {
        'DefaultValue' => '5',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '0'
      },
      'State' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      },
      'Type' => {
        'DefaultValue' => 'Problem',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'Problem Ticket',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => 'Raise Ticket'
  },
  'ActivityDialog-2b7f9259d6fb211e8370492ec98daa60' => {
    'ChangeTime' => '2020-02-14 09:27:17',
    'CreateTime' => '2020-02-14 07:52:38',
    'DescriptionLong' => '',
    'DescriptionShort' => 'employeedetail',
    'FieldOrder' => [
      'DynamicField_EmployeeID',
      'DynamicField_BankAcoountNumber',
      'DynamicField_Status'
    ],
    'Fields' => {
      'DynamicField_BankAcoountNumber' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => 'bankaccount',
        'Display' => '1'
      },
      'DynamicField_EmployeeID' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => 'employeeid',
        'Display' => '1'
      },
      'DynamicField_Status' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => 'status',
        'Display' => '1'
      }
    },
    'Interface' => [
      'AgentInterface',
      'CustomerInterface'
    ],
    'Name' => 'EmployeeProfile',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-2d4b32ad280c8a2ba2d9fc1a14a4bfd3' => {
    'ChangeTime' => '2020-03-04 09:56:17',
    'CreateTime' => '2020-03-04 08:26:11',
    'DescriptionLong' => '',
    'DescriptionShort' => 'reject the changes',
    'FieldOrder' => [
      'DynamicField_Reason',
      'DynamicField_Status',
      'Article'
    ],
    'Fields' => {
      'Article' => {
        'Config' => {
          'CommunicationChannel' => 'Internal',
          'IsVisibleForCustomer' => '0',
          'TimeUnits' => '0'
        },
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_Reason' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_Status' => {
        'DefaultValue' => 'Change Reject',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '0'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'Reject Changes',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => 'Reject'
  },
  'ActivityDialog-329232cb45ef48899f275b94c644e8b2' => {
    'ChangeTime' => '2020-03-12 11:45:16',
    'CreateTime' => '2020-02-14 09:50:35',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Deny',
    'FieldOrder' => [
      'DynamicField_Reason',
      'DynamicField_Status'
    ],
    'Fields' => {
      'DynamicField_Reason' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => 'Reason',
        'Display' => '1'
      },
      'DynamicField_Status' => {
        'DefaultValue' => 'It Deny',
        'DescriptionLong' => '',
        'DescriptionShort' => 'deny',
        'Display' => '0'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'Reject',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-388a211cd091df70fd2b94bcfbd1d7ca' => {
    'ChangeTime' => '2020-03-04 09:56:54',
    'CreateTime' => '2020-03-04 07:52:05',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Rasie ticket to make the required changes',
    'FieldOrder' => [
      'Priority',
      'DynamicField_ITSMImpact',
      'DynamicField_ChangeType',
      'DynamicField_ITSMCriticality',
      'Article',
      'DynamicField_ImpactedResources',
      'DynamicField_ImpactedBusinessServices',
      'DynamicField_ImapctedUserGroups',
      'DynamicField_Status'
    ],
    'Fields' => {
      'Article' => {
        'Config' => {
          'CommunicationChannel' => 'Internal',
          'IsVisibleForCustomer' => '0',
          'TimeUnits' => '0'
        },
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_ChangeType' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_ITSMCriticality' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_ITSMImpact' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_ImapctedUserGroups' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_ImpactedBusinessServices' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_ImpactedResources' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_Status' => {
        'DefaultValue' => 'Change Manager',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '0'
      },
      'Priority' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'Change Ticket Raise',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => 'Raise Change Ticket'
  },
  'ActivityDialog-593327ad982c22a9670558c8da11ff7c' => {
    'ChangeTime' => '2020-03-13 07:45:32',
    'CreateTime' => '2020-02-14 06:58:50',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Rasing ticket for service requested',
    'FieldOrder' => [
      'DynamicField_FirstName',
      'DynamicField_LastName',
      'DynamicField_EmployeeID',
      'DynamicField_Email',
      'DynamicField_Boss',
      'DynamicField_Department',
      'DynamicField_Status',
      'DynamicField_Description'
    ],
    'Fields' => {
      'DynamicField_Boss' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_Department' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => 'Department',
        'Display' => '1'
      },
      'DynamicField_Description' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_Email' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_EmployeeID' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_FirstName' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => 'Firstname',
        'Display' => '2'
      },
      'DynamicField_LastName' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => 'Lastname',
        'Display' => '2'
      },
      'DynamicField_Status' => {
        'DefaultValue' => 'Hr Department',
        'DescriptionLong' => '',
        'DescriptionShort' => 'Status',
        'Display' => '0'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'Raise Request',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-6554f552138586d3e2eac8def225ffb7' => {
    'ChangeTime' => '2020-03-04 09:57:43',
    'CreateTime' => '2020-03-04 07:25:50',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Provide a workaround',
    'FieldOrder' => [
      'State',
      'Article',
      'DynamicField_CauseNote',
      'DynamicField_Workaround',
      'DynamicField_WorkaroundNote',
      'DynamicField_Status'
    ],
    'Fields' => {
      'Article' => {
        'Config' => {
          'CommunicationChannel' => 'Internal',
          'IsVisibleForCustomer' => '0',
          'TimeUnits' => '0'
        },
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_CauseNote' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_Status' => {
        'DefaultValue' => 'Risk',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '0'
      },
      'DynamicField_Workaround' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_WorkaroundNote' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'State' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'Accept The Risk',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-6f7ce7e4dc2ab8143c2ffa3fde398be0' => {
    'ChangeTime' => '2020-02-25 09:50:10',
    'CreateTime' => '2020-02-25 09:50:10',
    'DescriptionLong' => '',
    'DescriptionShort' => 'problem',
    'FieldOrder' => [
      'DynamicField_ProblemType'
    ],
    'Fields' => {
      'DynamicField_ProblemType' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => 'problemtype',
        'Display' => '1'
      }
    },
    'Interface' => [
      'CustomerInterface'
    ],
    'Name' => 'ProblemRegister',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-72aa7ddd366599879a090aaf76cb2049' => {
    'ChangeTime' => '2020-03-04 09:51:32',
    'CreateTime' => '2020-03-04 06:35:37',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Rejected as not a valid problem',
    'FieldOrder' => [
      'Article',
      'DynamicField_Status'
    ],
    'Fields' => {
      'Article' => {
        'Config' => {
          'CommunicationChannel' => 'Internal',
          'IsVisibleForCustomer' => '0',
          'TimeUnits' => '0'
        },
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_Status' => {
        'DefaultValue' => 'Reject',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '0'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'Reject',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => 'Reject'
  },
  'ActivityDialog-8c77568b74334aa95fb1fa7c64b14059' => {
    'ChangeTime' => '2020-02-19 10:19:49',
    'CreateTime' => '2020-02-19 09:23:41',
    'DescriptionLong' => '',
    'DescriptionShort' => 'final status',
    'FieldOrder' => [
      'State'
    ],
    'Fields' => {
      'State' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => 'final status',
        'Display' => '2'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'final',
    'Permission' => '',
    'RequiredLock' => '1',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-a0236392000b4921bd46f0aef8e8048e' => {
    'ChangeTime' => '2020-03-04 09:50:38',
    'CreateTime' => '2020-03-04 06:34:54',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Confirm that problem exists',
    'FieldOrder' => [
      'Article',
      'DynamicField_ProblemAssessmentNote',
      'DynamicField_Status'
    ],
    'Fields' => {
      'Article' => {
        'Config' => {
          'CommunicationChannel' => 'Internal',
          'IsVisibleForCustomer' => '0',
          'TimeUnits' => '0'
        },
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_ProblemAssessmentNote' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_Status' => {
        'DefaultValue' => 'Approve',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '0'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'Accept',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => 'Accept'
  },
  'ActivityDialog-bdbccaa4900ba07864604b196e0924b8' => {
    'ChangeTime' => '2020-02-25 11:07:53',
    'CreateTime' => '2020-02-25 10:03:28',
    'DescriptionLong' => '',
    'DescriptionShort' => 'problem info',
    'FieldOrder' => [
      'DynamicField_FirstName',
      'DynamicField_LastName',
      'DynamicField_Device',
      'DynamicField_ProblemType',
      'Priority',
      'DynamicField_Reason'
    ],
    'Fields' => {
      'DynamicField_Device' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => 'Device',
        'Display' => '2'
      },
      'DynamicField_FirstName' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => 'First Name',
        'Display' => '2'
      },
      'DynamicField_LastName' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => 'Last Name',
        'Display' => '1'
      },
      'DynamicField_ProblemType' => {
        'DefaultValue' => 'Hardware',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '0'
      },
      'DynamicField_Reason' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => 'Description',
        'Display' => '1'
      },
      'Priority' => {
        'DefaultValue' => '5 very high',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '0'
      }
    },
    'Interface' => [
      'CustomerInterface'
    ],
    'Name' => 'ProblemInfoHardware',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-c2fbf710f08ff80e03cdb993b75f163b' => {
    'ChangeTime' => '2020-02-14 09:32:22',
    'CreateTime' => '2020-02-14 09:32:22',
    'DescriptionLong' => '',
    'DescriptionShort' => 'what actions hr can perform',
    'FieldOrder' => [
      'DynamicField_Status'
    ],
    'Fields' => {
      'DynamicField_Status' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => 'status',
        'Display' => '1'
      }
    },
    'Interface' => [
      'AgentInterface',
      'CustomerInterface'
    ],
    'Name' => 'HR Actions',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-cb93f0c22125ea7b5730b60647022de2' => {
    'ChangeTime' => '2020-03-04 09:57:28',
    'CreateTime' => '2020-03-04 07:11:26',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Fix Problem',
    'FieldOrder' => [
      'State',
      'Article',
      'DynamicField_CauseNote',
      'DynamicField_Fixnote',
      'DynamicField_Status'
    ],
    'Fields' => {
      'Article' => {
        'Config' => {
          'CommunicationChannel' => 'Internal',
          'IsVisibleForCustomer' => '0',
          'TimeUnits' => '0'
        },
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_CauseNote' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_Fixnote' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_Status' => {
        'DefaultValue' => 'Fix',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '0'
      },
      'State' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'Fix Problem',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => 'Fix'
  },
  'ActivityDialog-dbeac60a802c6c41ea7ab6434ecda184' => {
    'ChangeTime' => '2020-02-25 10:00:28',
    'CreateTime' => '2020-02-25 10:00:28',
    'DescriptionLong' => '',
    'DescriptionShort' => 'network issue',
    'FieldOrder' => [
      'DynamicField_FirstName',
      'DynamicField_LastName',
      'DynamicField_NetworkId',
      'DynamicField_Reason'
    ],
    'Fields' => {
      'DynamicField_FirstName' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => 'first name',
        'Display' => '2'
      },
      'DynamicField_LastName' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => 'last name',
        'Display' => '1'
      },
      'DynamicField_NetworkId' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => 'NetworkId',
        'Display' => '2'
      },
      'DynamicField_Reason' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => 'problem description',
        'Display' => '1'
      }
    },
    'Interface' => [
      'CustomerInterface'
    ],
    'Name' => 'ProblemInfoNetwork',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-fe8aee89dc41b34bdc1a8e95f73a4272' => {
    'ChangeTime' => '2020-02-14 08:09:25',
    'CreateTime' => '2020-02-14 07:56:50',
    'DescriptionLong' => '',
    'DescriptionShort' => 'reason for denial of request',
    'FieldOrder' => [
      'DynamicField_Reason'
    ],
    'Fields' => {
      'DynamicField_Reason' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => 'reason',
        'Display' => '1'
      }
    },
    'Interface' => [
      'AgentInterface',
      'CustomerInterface'
    ],
    'Name' => 'DenyReason',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-ff64e81d68d15c7af89dc88dd7db00ad' => {
    'ChangeTime' => '2020-02-20 05:15:30',
    'CreateTime' => '2020-02-14 07:30:08',
    'DescriptionLong' => '',
    'DescriptionShort' => 'email for new employee returned',
    'FieldOrder' => [
      'DynamicField_Email'
    ],
    'Fields' => {
      'DynamicField_Email' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => 'email',
        'Display' => '1'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'Email Creation',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  }
};

$Self->{'Process::Transition'} = {
  'Transition-28dea20783fdcae3c7e4a5ccaa4dec5b' => {
    'ChangeTime' => '2020-03-12 11:45:36',
    'Condition' => {
      '1' => {
        'Fields' => {
          'DynamicField_Status' => {
            'Match' => 'Hr Approve',
            'Type' => 'String'
          }
        },
        'Type' => 'and'
      }
    },
    'ConditionLinking' => 'and',
    'CreateTime' => '2020-02-14 07:22:42',
    'Name' => 'Approve'
  },
  'Transition-3778734f47000755d92d99c389b64023' => {
    'ChangeTime' => '2020-02-25 10:16:23',
    'Condition' => {
      '1' => {
        'Fields' => {
          'DynamicField_ProblemType' => {
            'Match' => 'Network',
            'Type' => 'Module'
          }
        },
        'Type' => 'and'
      }
    },
    'ConditionLinking' => 'and',
    'CreateTime' => '2020-02-25 10:16:23',
    'Name' => 'SubmitToNM'
  },
  'Transition-39a30b029c1a3c402aa328903dffb2e9' => {
    'ChangeTime' => '2020-03-04 09:19:25',
    'Condition' => {
      '1' => {
        'Fields' => {
          'DynamicField_Status' => {
            'Match' => 'Fix',
            'Type' => 'String'
          }
        },
        'Type' => 'and'
      }
    },
    'ConditionLinking' => 'and',
    'CreateTime' => '2020-03-04 09:19:25',
    'Name' => 'Risk'
  },
  'Transition-3a2ae8270cb6fedbe8c26dbf19df8ce9' => {
    'ChangeTime' => '2020-03-12 11:43:10',
    'Condition' => {
      '1' => {
        'Fields' => {
          'DynamicField_Status' => {
            'Match' => 'Hr Department',
            'Type' => 'String'
          }
        },
        'Type' => 'and'
      }
    },
    'ConditionLinking' => 'and',
    'CreateTime' => '2020-02-14 07:00:21',
    'Name' => 'Submit To Request Approver'
  },
  'Transition-5c49ee00d808c2710c4d8c730e951f9b' => {
    'ChangeTime' => '2020-03-12 10:59:59',
    'Condition' => {
      '1' => {
        'Fields' => {
          'DynamicField_AssignedTo' => {
            'Match' => 'Administrator',
            'Type' => 'String'
          }
        },
        'Type' => 'and'
      }
    },
    'ConditionLinking' => 'and',
    'CreateTime' => '2020-03-04 06:12:36',
    'Name' => 'MoveToAdministrator'
  },
  'Transition-68eeea3241e3253f3ce6705487560d58' => {
    'ChangeTime' => '2020-02-25 10:22:06',
    'Condition' => {
      '1' => {
        'Fields' => {
          'DynamicField_ProblemType' => {
            'Match' => 'Network',
            'Type' => 'String'
          }
        },
        'Type' => 'and'
      }
    },
    'ConditionLinking' => 'and',
    'CreateTime' => '2020-02-25 09:53:56',
    'Name' => 'NetworkProblem'
  },
  'Transition-8246462fe507ef2d9ebac0116667ede9' => {
    'ChangeTime' => '2020-02-25 10:17:00',
    'Condition' => {
      '1' => {
        'Fields' => {
          'DynamicField_ProblemType' => {
            'Match' => 'Hardware',
            'Type' => 'String'
          }
        },
        'Type' => 'and'
      }
    },
    'ConditionLinking' => 'and',
    'CreateTime' => '2020-02-25 10:17:00',
    'Name' => 'SubmitToHWM'
  },
  'Transition-829d519632f70450423f1edbdb078caa' => {
    'ChangeTime' => '2020-03-12 11:45:55',
    'Condition' => {
      '1' => {
        'Fields' => {
          'DynamicField_Status' => {
            'Match' => 'Hr Deny',
            'Type' => 'String'
          }
        },
        'Type' => 'and'
      }
    },
    'ConditionLinking' => 'and',
    'CreateTime' => '2020-02-14 07:23:10',
    'Name' => 'Deny'
  },
  'Transition-8454ee19f9842e666c2aa191127728b3' => {
    'ChangeTime' => '2020-03-04 09:13:33',
    'Condition' => {
      '1' => {
        'Fields' => {
          'DynamicField_Status' => {
            'Match' => 'Fix',
            'Type' => 'String'
          }
        },
        'Type' => 'and'
      }
    },
    'ConditionLinking' => 'and',
    'CreateTime' => '2020-03-04 07:48:23',
    'Name' => 'Fix'
  },
  'Transition-bb299a3e919343ead22955a09e0b9c3c' => {
    'ChangeTime' => '2020-03-04 09:09:07',
    'Condition' => {
      '1' => {
        'Fields' => {
          'DynamicField_Status' => {
            'Match' => 'Approve',
            'Type' => 'String'
          }
        },
        'Type' => 'and'
      }
    },
    'ConditionLinking' => 'and',
    'CreateTime' => '2020-03-04 07:22:35',
    'Name' => 'Solve Problem'
  },
  'Transition-c1d209c61c3eb5946ec854a977f13c6a' => {
    'ChangeTime' => '2020-02-20 11:59:26',
    'Condition' => {
      '1' => {
        'Fields' => {
          'DynamicField_Done' => {
            'Match' => 'ok',
            'Type' => 'String'
          }
        },
        'Type' => 'and'
      }
    },
    'ConditionLinking' => 'and',
    'CreateTime' => '2020-02-20 06:01:48',
    'Name' => 'Information'
  },
  'Transition-c4c0ce0369601efab42bd9bc8da38ca7' => {
    'ChangeTime' => '2020-03-12 11:46:34',
    'Condition' => {
      '1' => {
        'Fields' => {
          'DynamicField_Status' => {
            'Match' => 'It Deny',
            'Type' => 'String'
          }
        },
        'Type' => 'and'
      }
    },
    'ConditionLinking' => 'and',
    'CreateTime' => '2020-02-14 07:24:17',
    'Name' => 'Reject'
  },
  'Transition-c6bb1521a2dc7b133e501e745fb7c162' => {
    'ChangeTime' => '2020-03-12 11:46:15',
    'Condition' => {
      '1' => {
        'Fields' => {
          'DynamicField_Status' => {
            'Match' => 'It Approve',
            'Type' => 'String'
          }
        },
        'Type' => 'and'
      }
    },
    'ConditionLinking' => 'and',
    'CreateTime' => '2020-02-14 07:23:47',
    'Name' => 'Accept'
  },
  'Transition-dd7e0d5dc5f69839dcef251b98125ed0' => {
    'ChangeTime' => '2020-03-04 09:26:16',
    'Condition' => {
      '1' => {
        'Fields' => {
          'DynamicField_Status' => {
            'Match' => 'Change Approve',
            'Type' => 'String'
          }
        },
        'Type' => 'and'
      }
    },
    'ConditionLinking' => 'and',
    'CreateTime' => '2020-03-04 08:16:12',
    'Name' => 'Approve'
  },
  'Transition-e60a79a107f96d034eb50d79d0d00a41' => {
    'ChangeTime' => '2020-03-04 09:20:44',
    'Condition' => {
      '1' => {
        'Fields' => {
          'DynamicField_Status' => {
            'Match' => 'Change Reject',
            'Type' => 'String'
          }
        },
        'Type' => 'and'
      }
    },
    'ConditionLinking' => 'and',
    'CreateTime' => '2020-03-04 08:17:35',
    'Name' => 'Reject'
  },
  'Transition-eefae275dfc642168fdc486a3f022db6' => {
    'ChangeTime' => '2020-02-25 10:21:52',
    'Condition' => {
      '1' => {
        'Fields' => {
          'DynamicField_ProblemType' => {
            'Match' => 'Network',
            'Type' => 'String'
          }
        },
        'Type' => 'and'
      }
    },
    'ConditionLinking' => 'and',
    'CreateTime' => '2020-02-25 09:52:37',
    'Name' => 'Hardware Problem'
  },
  'Transition-f9c361bfa69181dc0e9fa1343367511e' => {
    'ChangeTime' => '2020-03-04 09:17:33',
    'Condition' => {
      '1' => {
        'Fields' => {
          'DynamicField_Status' => {
            'Match' => 'Change Manager',
            'Type' => 'String'
          }
        },
        'Type' => 'and'
      }
    },
    'ConditionLinking' => 'and',
    'CreateTime' => '2020-03-04 08:07:29',
    'Name' => 'MoveToChangeManager'
  }
};

$Self->{'Process::TransitionAction'} = {
  'TransitionAction-0a17fa54faa0e06c609467d6180b412c' => {
    'ChangeTime' => '2020-02-19 10:16:23',
    'Config' => {
      'State' => 'closed unsuccessful'
    },
    'CreateTime' => '2020-02-14 07:45:19',
    'Module' => 'Kernel::System::ProcessManagement::TransitionAction::TicketStateSet',
    'Name' => 'ClosedTicketUnsuccessful'
  },
  'TransitionAction-0eb4d2c30e34c1db6605a6b6459de706' => {
    'ChangeTime' => '2020-02-20 11:50:36',
    'Config' => {
      'Queue' => 'hm support'
    },
    'CreateTime' => '2020-02-20 11:50:36',
    'Module' => 'Kernel::System::ProcessManagement::TransitionAction::TicketQueueSet',
    'Name' => 'MoveToHmQueue'
  },
  'TransitionAction-446defb431c650b19df444948d461738' => {
    'ChangeTime' => '2020-02-25 10:25:29',
    'Config' => {
      'Type' => 'open'
    },
    'CreateTime' => '2020-02-25 10:25:29',
    'Module' => 'Kernel::System::ProcessManagement::TransitionAction::TicketTypeSet',
    'Name' => 'ff'
  },
  'TransitionAction-46663ab3d1804157507a74e0f5ba3b4e' => {
    'ChangeTime' => '2020-02-25 10:14:34',
    'Config' => {
      'Responsible' => 'hwm'
    },
    'CreateTime' => '2020-02-25 10:14:34',
    'Module' => 'Kernel::System::ProcessManagement::TransitionAction::TicketResponsibleSet',
    'Name' => 'AssignHWMAgent'
  },
  'TransitionAction-4eb350e29c04541349dcea017666aba0' => {
    'ChangeTime' => '2020-02-19 10:16:58',
    'Config' => {
      'State' => 'closed successful'
    },
    'CreateTime' => '2020-02-14 07:19:24',
    'Module' => 'Kernel::System::ProcessManagement::TransitionAction::TicketStateSet',
    'Name' => 'CloseTicketSuccessful'
  },
  'TransitionAction-51a126ccb64a715a0f62b9a0ef9165d5' => {
    'ChangeTime' => '2020-02-25 10:13:13',
    'Config' => {
      'Queue' => 'Hardware Manager'
    },
    'CreateTime' => '2020-02-25 10:13:13',
    'Module' => 'Kernel::System::ProcessManagement::TransitionAction::TicketQueueSet',
    'Name' => 'MoveToHWMQueue'
  },
  'TransitionAction-64178b6f446854b6a5f21d23e4c86727' => {
    'ChangeTime' => '2020-03-04 08:09:44',
    'Config' => {
      'Responsible' => 'Change Manager'
    },
    'CreateTime' => '2020-03-04 08:09:44',
    'Module' => 'Kernel::System::ProcessManagement::TransitionAction::TicketResponsibleSet',
    'Name' => 'AssignCMAgent'
  },
  'TransitionAction-6891ad4d8e2f774baaa0d971818aca61' => {
    'ChangeTime' => '2020-02-19 11:51:23',
    'Config' => {
      'Queue' => 'hm support'
    },
    'CreateTime' => '2020-02-14 10:01:12',
    'Module' => 'Kernel::System::ProcessManagement::TransitionAction::TicketQueueSet',
    'Name' => 'Move To manager Queue'
  },
  'TransitionAction-7730c30dcf44afdfe219b6798017795a' => {
    'ChangeTime' => '2020-03-13 05:28:25',
    'Config' => {
      'Queue' => 'Administrator'
    },
    'CreateTime' => '2020-03-04 06:40:54',
    'Module' => 'Kernel::System::ProcessManagement::TransitionAction::TicketQueueSet',
    'Name' => 'AssignAdministrator'
  },
  'TransitionAction-8679ea06e087babf2bd31ae23fc773f1' => {
    'ChangeTime' => '2020-02-14 08:32:17',
    'Config' => {
      'Queue' => 'hr support'
    },
    'CreateTime' => '2020-02-14 07:01:26',
    'Module' => 'Kernel::System::ProcessManagement::TransitionAction::TicketQueueSet',
    'Name' => 'Move To HR Queue'
  },
  'TransitionAction-968061553b6987376448e5f33f945c07' => {
    'ChangeTime' => '2020-02-14 08:34:51',
    'Config' => {
      'Responsible' => 'it'
    },
    'CreateTime' => '2020-02-14 08:34:51',
    'Module' => 'Kernel::System::ProcessManagement::TransitionAction::TicketResponsibleSet',
    'Name' => 'Assign IT agent'
  },
  'TransitionAction-a0140a6c2611f8e36fa38bfe7157a9e0' => {
    'ChangeTime' => '2020-02-20 11:51:39',
    'Config' => {
      'Responsible' => 'HManager'
    },
    'CreateTime' => '2020-02-20 11:51:39',
    'Module' => 'Kernel::System::ProcessManagement::TransitionAction::TicketResponsibleSet',
    'Name' => 'AssignHManager'
  },
  'TransitionAction-a62716f45e5b5d0b0e514937c1321b15' => {
    'ChangeTime' => '2020-02-25 07:48:08',
    'Config' => {
      'Responsible' => 'hr agents'
    },
    'CreateTime' => '2020-02-14 07:02:05',
    'Module' => 'Kernel::System::ProcessManagement::TransitionAction::TicketResponsibleSet',
    'Name' => 'Assign HR Agent'
  },
  'TransitionAction-a9b227e89162a0aba855059c641b5751' => {
    'ChangeTime' => '2020-03-04 08:09:13',
    'Config' => {
      'Queue' => 'Change Manager'
    },
    'CreateTime' => '2020-03-04 08:09:13',
    'Module' => 'Kernel::System::ProcessManagement::TransitionAction::TicketQueueSet',
    'Name' => 'MoveToCMQueue'
  },
  'TransitionAction-b390831e7a1b691a500d4572aa5ef048' => {
    'ChangeTime' => '2020-03-12 10:42:14',
    'Config' => {
      'Responsible' => 'Administrator'
    },
    'CreateTime' => '2020-03-04 06:41:31',
    'Module' => 'Kernel::System::ProcessManagement::TransitionAction::TicketResponsibleSet',
    'Name' => 'AssignAdmin'
  },
  'TransitionAction-ba992972babd9025ac2462b685546026' => {
    'ChangeTime' => '2020-02-25 10:14:00',
    'Config' => {
      'Responsible' => 'nm'
    },
    'CreateTime' => '2020-02-25 10:14:00',
    'Module' => 'Kernel::System::ProcessManagement::TransitionAction::TicketResponsibleSet',
    'Name' => 'Assign NM agent'
  },
  'TransitionAction-da31599d270dfb611f654ce3bbc9ebd6' => {
    'ChangeTime' => '2020-03-16 10:28:17',
    'Config' => {
      'Queue' => 'Raw'
    },
    'CreateTime' => '2020-02-25 10:12:34',
    'Module' => 'Kernel::System::ProcessManagement::TransitionAction::TicketQueueSet',
    'Name' => 'MoveToAdminQueue'
  },
  'TransitionAction-f5480ef75fe1e29d9be624bc74e6f908' => {
    'ChangeTime' => '2020-02-14 09:58:45',
    'Config' => {
      'Queue' => 'it support'
    },
    'CreateTime' => '2020-02-14 07:44:07',
    'Module' => 'Kernel::System::ProcessManagement::TransitionAction::TicketQueueSet',
    'Name' => 'Move To IT Queue'
  }
};

    return;
}
1;
