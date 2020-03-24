CustomerUser
# (customer user ldap backend and settings)
    $Self->{CustomerUser} = {
        Name => 'LDAP Backend',
        Module => 'Kernel::System::CustomerUser::LDAP',
        Params => {
            # ldap host
            Host => 'localost',
            # ldap base dn
            BaseDN => 'ou=seas,o=csuh',
            # search scope (one|sub)
            SSCOPE => 'sub',
            # The following is valid but would only be necessary if the
            # anonymous user does NOT have permission to read from the LDAP tree
            UserDN => '',
            UserPw => '',
            # in case you want to add always one filter to each ldap query, use
            # this option. e. g. AlwaysFilter => '(mail=*)' or AlwaysFilter => '(objectclass=user)'
            AlwaysFilter => '',
            # if the charset of your ldap server is iso-8859-1, use this:
            # SourceCharset => 'iso-8859-1',
            # die if backend can't work, e. g. can't connect to server
            Die => 0,
            # Net::LDAP new params (if needed - for more info see perldoc Net::LDAP)
            Params => {
                port    => 389,
                timeout => 120,
                async   => 0,
                version => 3,
            },
        },
        # customer unique id
        CustomerKey => 'uid',
        # customer #
        CustomerID => 'mail',
        CustomerUserListFields => ['cn', 'mail'],
       CustomerUserSearchFields => ['uid', 'cn', 'mail'],
       CustomerUserSearchPrefix => '',
       CustomerUserSearchSuffix => '*',
        CustomerUserSearchListLimit => 250,
        CustomerUserPostMasterSearchFields => ['mail'],
        CustomerUserNameFields => ['givenname', 'sn'],
        # Configures the character for joining customer user name parts. Join single space if it is not defined.
        CustomerUserNameFieldsJoin => '',
        # show customer user and customer tickets in customer interface
       CustomerUserExcludePrimaryCustomerID => 0,        # add a ldap filter for valid users (expert setting)
        # CustomerUserValidFilter => '(!(description=gesperrt))',
        # admin can't change customer preferences
        AdminSetPreferences => 0,
        # cache time to live in sec. - cache any ldap queries
        CacheTTL => 0,
        Map => [
            # note: Login, Email and CustomerID needed!
            # var, frontend, storage, shown (1=always,2=lite), required, storage-type, http-link, readonly, http-link-target, link class(es)
            [ 'UserTitle',       Translatable('Title or salutation'), 'title',               1, 0, 'var', '', 1, undef, undef ],
           [ 'UserFirstname',   Translatable('Firstname'),           'givenname',           1, 1, 'var', '', 1, undef, undef ],
            [ 'UserLastname',    Translatable('Lastname'),            'sn',                  1, 1, 'var', '', 1, undef, undef ],
            [ 'UserLogin',       Translatable('Username'),            'uid',                 1, 1, 'var', '', 1, undef, undef ],
            [ 'UserEmail',       Translatable('Email'),               'mail',                1, 1, 'var', '', 1, undef, undef ],
            [ 'UserCustomerID',  Translatable('CustomerID'),          'mail',                0, 1, 'var', '', 1, undef, undef ],
            # [ 'UserCustomerIDs', Translatable('CustomerIDs'),         'second_customer_ids', 1, 0, 'var', '', 1, undef, undef ],
            [ 'UserPhone',       Translatable('Phone'),               'telephonenumber',     1, 0, 'var', '', 1, undef, undef ],
            [ 'UserAddress',     Translatable('Address'),             'postaladdress',       1, 0, 'var', '', 1, undef, undef ],
            [ 'UserComment',     Translatable('Comment'),             'description',         1, 0, 'var', '', 1, undef, undef ],

            # this is needed, if "SMIME::FetchFromCustomer" is active
            # [ 'UserSMIMECertificate', 'SMIMECertificate', 'userSMIMECertificate', 0, 1, 'var', '', 1, undef, undef ],

            # Dynamic field example
            # [ 'DynamicField_Name_X', undef, 'Name_X', 0, 0, 'dynamic_field', undef, 0, undef, undef ],
        ],
    };
