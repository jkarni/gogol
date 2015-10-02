{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.TagManager.Accounts.Permissions.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a user\'s Account & Container Permissions.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsPermissionsCreate@.
module Network.Google.Resource.TagManager.Accounts.Permissions.Create
    (
    -- * REST Resource
      AccountsPermissionsCreateResource

    -- * Creating a Request
    , accountsPermissionsCreate'
    , AccountsPermissionsCreate'

    -- * Request Lenses
    , apcQuotaUser
    , apcPrettyPrint
    , apcUserAccess
    , apcUserIP
    , apcAccountId
    , apcKey
    , apcOAuthToken
    , apcFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsPermissionsCreate@ which the
-- 'AccountsPermissionsCreate'' request conforms to.
type AccountsPermissionsCreateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "permissions" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] UserAccess :> Post '[JSON] UserAccess

-- | Creates a user\'s Account & Container Permissions.
--
-- /See:/ 'accountsPermissionsCreate'' smart constructor.
data AccountsPermissionsCreate' = AccountsPermissionsCreate'
    { _apcQuotaUser   :: !(Maybe Text)
    , _apcPrettyPrint :: !Bool
    , _apcUserAccess  :: !UserAccess
    , _apcUserIP      :: !(Maybe Text)
    , _apcAccountId   :: !Text
    , _apcKey         :: !(Maybe Key)
    , _apcOAuthToken  :: !(Maybe OAuthToken)
    , _apcFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPermissionsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apcQuotaUser'
--
-- * 'apcPrettyPrint'
--
-- * 'apcUserAccess'
--
-- * 'apcUserIP'
--
-- * 'apcAccountId'
--
-- * 'apcKey'
--
-- * 'apcOAuthToken'
--
-- * 'apcFields'
accountsPermissionsCreate'
    :: UserAccess -- ^ 'UserAccess'
    -> Text -- ^ 'accountId'
    -> AccountsPermissionsCreate'
accountsPermissionsCreate' pApcUserAccess_ pApcAccountId_ =
    AccountsPermissionsCreate'
    { _apcQuotaUser = Nothing
    , _apcPrettyPrint = True
    , _apcUserAccess = pApcUserAccess_
    , _apcUserIP = Nothing
    , _apcAccountId = pApcAccountId_
    , _apcKey = Nothing
    , _apcOAuthToken = Nothing
    , _apcFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
apcQuotaUser :: Lens' AccountsPermissionsCreate' (Maybe Text)
apcQuotaUser
  = lens _apcQuotaUser (\ s a -> s{_apcQuotaUser = a})

-- | Returns response with indentations and line breaks.
apcPrettyPrint :: Lens' AccountsPermissionsCreate' Bool
apcPrettyPrint
  = lens _apcPrettyPrint
      (\ s a -> s{_apcPrettyPrint = a})

-- | Multipart request metadata.
apcUserAccess :: Lens' AccountsPermissionsCreate' UserAccess
apcUserAccess
  = lens _apcUserAccess
      (\ s a -> s{_apcUserAccess = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
apcUserIP :: Lens' AccountsPermissionsCreate' (Maybe Text)
apcUserIP
  = lens _apcUserIP (\ s a -> s{_apcUserIP = a})

-- | The GTM Account ID.
apcAccountId :: Lens' AccountsPermissionsCreate' Text
apcAccountId
  = lens _apcAccountId (\ s a -> s{_apcAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
apcKey :: Lens' AccountsPermissionsCreate' (Maybe Key)
apcKey = lens _apcKey (\ s a -> s{_apcKey = a})

-- | OAuth 2.0 token for the current user.
apcOAuthToken :: Lens' AccountsPermissionsCreate' (Maybe OAuthToken)
apcOAuthToken
  = lens _apcOAuthToken
      (\ s a -> s{_apcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
apcFields :: Lens' AccountsPermissionsCreate' (Maybe Text)
apcFields
  = lens _apcFields (\ s a -> s{_apcFields = a})

instance GoogleAuth AccountsPermissionsCreate' where
        authKey = apcKey . _Just
        authToken = apcOAuthToken . _Just

instance GoogleRequest AccountsPermissionsCreate'
         where
        type Rs AccountsPermissionsCreate' = UserAccess
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u AccountsPermissionsCreate'{..}
          = go _apcQuotaUser (Just _apcPrettyPrint) _apcUserIP
              _apcAccountId
              _apcKey
              _apcOAuthToken
              _apcFields
              (Just AltJSON)
              _apcUserAccess
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsPermissionsCreateResource)
                      r
                      u
