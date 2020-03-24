# --
# Copyright (C) 2001-2019 OTRS AG, https://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --
#  Note:
#
#  -->> Most OTRS configuration should be done via the OTRS web interface
#       and the SysConfig. Only for some configuration, such as database
#       credentials and customer data source changes, you should edit this
#       file. For changes do customer data sources you can copy the definitions
#       from Kernel/Config/Defaults.pm and paste them in this file.
#       Config.pm will not be overwritten when updating OTRS.
# --

package Kernel::Config;

use strict;
use warnings;
use utf8;

sub Load {
    my $Self = shift;

    # ---------------------------------------------------- #
    # database settings                                    #
    # ---------------------------------------------------- #

    # The database host
    $Self->{'DatabaseHost'} = '127.0.0.1';

    # The database name
    $Self->{'Database'} = "otrs";

    # The database user
    $Self->{'DatabaseUser'} = "otrs";

    # The password of database user. You also can use bin/otrs.Console.pl Maint::Database::PasswordCrypt
    # for crypted passwords
    $Self->{'DatabasePw'} = 'myotrspw';

    # The database DSN for MySQL ==> more: "perldoc DBD::mysql"
    $Self->{'DatabaseDSN'} = "DBI:Pg:dbname=$Self->{Database};host=$Self->{DatabaseHost}";

    # The database DSN for PostgreSQL ==> more: "perldoc DBD::Pg"
    # if you want to use a local socket connection
#    $Self->{DatabaseDSN} = "DBI:Pg:dbname=$Self->{Database};";
    # if you want to use a TCP/IP connection
#    $Self->{DatabaseDSN} = "DBI:Pg:dbname=$Self->{Database};host=$Self->{DatabaseHost};";

    # The database DSN for Microsoft SQL Server - only supported if OTRS is
    # installed on Windows as well
#    $Self->{DatabaseDSN} = "DBI:ODBC:driver={SQL Server};Database=$Self->{Database};Server=$Self->{DatabaseHost},1433";

    # The database DSN for Oracle ==> more: "perldoc DBD::oracle"
#    $Self->{DatabaseDSN} = "DBI:Oracle://$Self->{DatabaseHost}:1521/$Self->{Database}";
#
#    $ENV{ORACLE_HOME}     = '/path/to/your/oracle';
#    $ENV{NLS_DATE_FORMAT} = 'YYYY-MM-DD HH24:MI:SS';
#    $ENV{NLS_LANG}        = 'AMERICAN_AMERICA.AL32UTF8';

    # ---------------------------------------------------- #
    # fs root directory
    # ---------------------------------------------------- #
    $Self->{Home} = '/opt/otrs';

    # ---------------------------------------------------- #
    # insert your own config settings "here"               #
    # config settings taken from Kernel/Config/Defaults.pm #
    # ---------------------------------------------------- #
    # $Self->{SessionUseCookie} = 0;
    # $Self->{CheckMXRecord} = 0;

    # ---------------------------------------------------- #

    # ---------------------------------------------------- #
    # data inserted by installer                           #
    # ---------------------------------------------------- #
    # $DIBI$

    # ---------------------------------------------------- #
    # ---------------------------------------------------- #
    #                                                      #
    # end of your own config options!!!                    #
    #                                                      #
    # ---------------------------------------------------- #
    # ---------------------------------------------------- #

# CustomerUser
# (customer user ldap backend and settings)
   $Self->{CustomerUser1} = {
        Name => 'LDAP Backend',
        Module => 'Kernel::System::CustomerUser::LDAP',
        Params => {
#            # ldap host
            Host => 'localhost',
#            # ldap base dn
            BaseDN => 'dc=nodomain',
#            # search scope (one|sub)
            SSCOPE => 'sub',
#            # The following is valid but would only be necessary if the
#            # anonymous user does NOT have permission to read from the LDAP tree
#            UserDN => '',
#            UserPw => '',
#            # in case you want to add always one filter to each ldap query, use
#            # this option. e. g. AlwaysFilter => '(mail=*)' or AlwaysFilter => '(objectclass=user)'
#            AlwaysFilter => '',
#            # if the charset of your ldap server is iso-8859-1, use this:
#            # SourceCharset => 'iso-8859-1',
#            # die if backend can't work, e. g. can't connect to server
#            Die => 0,
#            # Net::LDAP new params (if needed - for more info see perldoc Net::LDAP)
            Params => {
                port    => 389,
               timeout => 120,
                async   => 0,
                version => 3,
            },
        },
#        # customer unique id
        CustomerKey => 'uid',
#        # customer #
        CustomerID => 'uid',
        CustomerUserListFields => ['cn', 'mail'],
        CustomerUserSearchFields => ['uid', 'cn', 'mail'],
        CustomerUserSearchPrefix => '',
        CustomerUserSearchSuffix => '*',
        CustomerUserSearchListLimit => 250,
#        CustomerUserPostMasterSearchFields => ['mail'],
        CustomerUserNameFields => ['givenname', 'sn'],
#        # Configures the character for joining customer user name parts. Join single space if it is not defined.
#        CustomerUserNameFieldsJoin => '',
#        # show customer user and customer tickets in customer interface
        #CustomerUserExcludePrimaryCustomerID => 0,
#        # add a ldap filter for valid users (expert setting)
 #CustomerUserValidFilter => '(!(description=gesperrt))',
#        # admin can't change customer preferences
        AdminSetPreferences => 1,
#        # cache time to live in sec. - cache any ldap queries
#        CacheTTL => 0,
        Map => [
#            # note: Login, Email and CustomerID needed!
#            # var, frontend, storage, shown (1=always,2=lite), required, storage-type, http-link, readonly, http-link-target, link class(es)
            #[ 'UserTitle',        Translatable('Title or salutation'),    'title',               1, 0, 'var', '', 1, undef, undef ],
            [ 'UserFirstname',     Translatable('Firstname'),              'givenname',           1, 1, 'var', '', 1, undef, undef ],
            [ 'UserLastname',      Translatable('Lastname'),               'sn',                  1, 1, 'var', '', 1, undef, undef ],
            [ 'UserLogin',         Translatable('Username'),               'uid',                 1, 1, 'var', '', 1, undef, undef ],
           #[ 'UserPassword',      Translatable('Password'),               'userPassword',        0, 1, 'var', '', 1, undef, undef ],
            [ 'UserEmail',         Translatable('Email'),                  'mail',                1, 1, 'var', '', 1, undef, undef ],
            [ 'UserCustomerID',     Translatable('CustomerID'),            'uid',                 0, 1, 'var', '', 1, undef, undef ],
#            # [ 'UserCustomerIDs', Translatable('CustomerIDs'),         'second_customer_ids', 1, 0, 'var', '', 1, undef, undef ],
#            [ 'UserPhone',       Translatable('Phone'),               'telephonenumber',     1, 0, 'var', '', 1, undef, undef ],
#            [ 'UserAddress',     Translatable('Address'),             'postaladdress',       1, 0, 'var', '', 1, undef, undef ],
#            [ 'UserComment',     Translatable('Comment'),             'description',         1, 0, 'var', '', 1, undef, undef ],
#
#            # this is needed, if "SMIME::FetchFromCustomer" is active
#            # [ 'UserSMIMECertificate', 'SMIMECertificate', 'userSMIMECertificate', 0, 1, 'var', '', 1, undef, undef ],
#
#            # Dynamic field example
#            # [ 'DynamicField_Name_X', undef, 'Name_X', 0, 0, 'dynamic_field', undef, 0, undef, undef ],
        ],
    };
$Self->{'Customer::AuthModule'} = 'Kernel::System::CustomerAuth::LDAP';
    $Self->{'Customer::AuthModule::LDAP::Host'} = 'localhost';
    $Self->{'Customer::AuthModule::LDAP::BaseDN'} = 'dc=nodomain';
    $Self->{'Customer::AuthModule::LDAP::UID'} = 'uid';
    $Self->{'Customer::AuthModule::LDAP::GroupDN'} = 'cn=miners,ou=Groups,dc=nodomain';
    $Self->{'Customer::AuthModule::LDAP::AccessAttr'} = '';

 ###############################################################################


# AuthSyncModule::LDAP::UserSyncGroupsDefinition
# (If "LDAP" was selected for AuthModule and you want to sync LDAP
# groups to otrs groups, define the following.)
#$Self->{'AuthSyncModule::LDAP::UserSyncGroupsDefinition'} = {
# # ldap group
#'cn=otrsagent,ou=Groups' => {
# # otrs group
# 'admin' => {
# permission
# rw => 1,
# ro => 1,
# },
# 'faq' => {
# rw => 0,
# ro => 1,
# },
# },
# 'cn=agent2,o=otrs' => {
# 'users' => {
# rw => 1,
# ro => 1,
# },
# }
# };



#################################################################################
    return 1;
}

# ---------------------------------------------------- #
# needed system stuff (don't edit this)                #
# ---------------------------------------------------- #

use Kernel::Config::Defaults; # import Translatable()
use parent qw(Kernel::Config::Defaults);


1;
