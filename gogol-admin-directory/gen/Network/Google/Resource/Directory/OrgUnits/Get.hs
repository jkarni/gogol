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
-- Module      : Network.Google.Resource.Directory.OrgUnits.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve Organization Unit
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryOrgUnitsGet@.
module Network.Google.Resource.Directory.OrgUnits.Get
    (
    -- * REST Resource
      OrgUnitsGetResource

    -- * Creating a Request
    , orgUnitsGet'
    , OrgUnitsGet'

    -- * Request Lenses
    , ougQuotaUser
    , ougPrettyPrint
    , ougUserIP
    , ougOrgUnitPath
    , ougCustomerId
    , ougKey
    , ougOAuthToken
    , ougFields
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryOrgUnitsGet@ which the
-- 'OrgUnitsGet'' request conforms to.
type OrgUnitsGetResource =
     "customer" :>
       Capture "customerId" Text :>
         "orgunits{" :>
           "orgUnitPath*}" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] OrgUnit

-- | Retrieve Organization Unit
--
-- /See:/ 'orgUnitsGet'' smart constructor.
data OrgUnitsGet' = OrgUnitsGet'
    { _ougQuotaUser   :: !(Maybe Text)
    , _ougPrettyPrint :: !Bool
    , _ougUserIP      :: !(Maybe Text)
    , _ougOrgUnitPath :: !Text
    , _ougCustomerId  :: !Text
    , _ougKey         :: !(Maybe Key)
    , _ougOAuthToken  :: !(Maybe OAuthToken)
    , _ougFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrgUnitsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ougQuotaUser'
--
-- * 'ougPrettyPrint'
--
-- * 'ougUserIP'
--
-- * 'ougOrgUnitPath'
--
-- * 'ougCustomerId'
--
-- * 'ougKey'
--
-- * 'ougOAuthToken'
--
-- * 'ougFields'
orgUnitsGet'
    :: Text -- ^ 'orgUnitPath'
    -> Text -- ^ 'customerId'
    -> OrgUnitsGet'
orgUnitsGet' pOugOrgUnitPath_ pOugCustomerId_ =
    OrgUnitsGet'
    { _ougQuotaUser = Nothing
    , _ougPrettyPrint = True
    , _ougUserIP = Nothing
    , _ougOrgUnitPath = pOugOrgUnitPath_
    , _ougCustomerId = pOugCustomerId_
    , _ougKey = Nothing
    , _ougOAuthToken = Nothing
    , _ougFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ougQuotaUser :: Lens' OrgUnitsGet' (Maybe Text)
ougQuotaUser
  = lens _ougQuotaUser (\ s a -> s{_ougQuotaUser = a})

-- | Returns response with indentations and line breaks.
ougPrettyPrint :: Lens' OrgUnitsGet' Bool
ougPrettyPrint
  = lens _ougPrettyPrint
      (\ s a -> s{_ougPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ougUserIP :: Lens' OrgUnitsGet' (Maybe Text)
ougUserIP
  = lens _ougUserIP (\ s a -> s{_ougUserIP = a})

-- | Full path of the organization unit or its Id
ougOrgUnitPath :: Lens' OrgUnitsGet' Text
ougOrgUnitPath
  = lens _ougOrgUnitPath
      (\ s a -> s{_ougOrgUnitPath = a})

-- | Immutable id of the Google Apps account
ougCustomerId :: Lens' OrgUnitsGet' Text
ougCustomerId
  = lens _ougCustomerId
      (\ s a -> s{_ougCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ougKey :: Lens' OrgUnitsGet' (Maybe Key)
ougKey = lens _ougKey (\ s a -> s{_ougKey = a})

-- | OAuth 2.0 token for the current user.
ougOAuthToken :: Lens' OrgUnitsGet' (Maybe OAuthToken)
ougOAuthToken
  = lens _ougOAuthToken
      (\ s a -> s{_ougOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ougFields :: Lens' OrgUnitsGet' (Maybe Text)
ougFields
  = lens _ougFields (\ s a -> s{_ougFields = a})

instance GoogleAuth OrgUnitsGet' where
        authKey = ougKey . _Just
        authToken = ougOAuthToken . _Just

instance GoogleRequest OrgUnitsGet' where
        type Rs OrgUnitsGet' = OrgUnit
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u OrgUnitsGet'{..}
          = go _ougQuotaUser (Just _ougPrettyPrint) _ougUserIP
              _ougOrgUnitPath
              _ougCustomerId
              _ougKey
              _ougOAuthToken
              _ougFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrgUnitsGetResource)
                      r
                      u
