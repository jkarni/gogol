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
-- Module      : Network.Google.Resource.Directory.OrgUnits.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update Organization Unit
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryOrgUnitsUpdate@.
module Network.Google.Resource.Directory.OrgUnits.Update
    (
    -- * REST Resource
      OrgUnitsUpdateResource

    -- * Creating a Request
    , orgUnitsUpdate'
    , OrgUnitsUpdate'

    -- * Request Lenses
    , ouuOrgUnit
    , ouuQuotaUser
    , ouuPrettyPrint
    , ouuUserIP
    , ouuOrgUnitPath
    , ouuCustomerId
    , ouuKey
    , ouuOAuthToken
    , ouuFields
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryOrgUnitsUpdate@ which the
-- 'OrgUnitsUpdate'' request conforms to.
type OrgUnitsUpdateResource =
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
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] OrgUnit :> Put '[JSON] OrgUnit

-- | Update Organization Unit
--
-- /See:/ 'orgUnitsUpdate'' smart constructor.
data OrgUnitsUpdate' = OrgUnitsUpdate'
    { _ouuOrgUnit     :: !OrgUnit
    , _ouuQuotaUser   :: !(Maybe Text)
    , _ouuPrettyPrint :: !Bool
    , _ouuUserIP      :: !(Maybe Text)
    , _ouuOrgUnitPath :: !Text
    , _ouuCustomerId  :: !Text
    , _ouuKey         :: !(Maybe Key)
    , _ouuOAuthToken  :: !(Maybe OAuthToken)
    , _ouuFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrgUnitsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ouuOrgUnit'
--
-- * 'ouuQuotaUser'
--
-- * 'ouuPrettyPrint'
--
-- * 'ouuUserIP'
--
-- * 'ouuOrgUnitPath'
--
-- * 'ouuCustomerId'
--
-- * 'ouuKey'
--
-- * 'ouuOAuthToken'
--
-- * 'ouuFields'
orgUnitsUpdate'
    :: OrgUnit -- ^ 'OrgUnit'
    -> Text -- ^ 'orgUnitPath'
    -> Text -- ^ 'customerId'
    -> OrgUnitsUpdate'
orgUnitsUpdate' pOuuOrgUnit_ pOuuOrgUnitPath_ pOuuCustomerId_ =
    OrgUnitsUpdate'
    { _ouuOrgUnit = pOuuOrgUnit_
    , _ouuQuotaUser = Nothing
    , _ouuPrettyPrint = True
    , _ouuUserIP = Nothing
    , _ouuOrgUnitPath = pOuuOrgUnitPath_
    , _ouuCustomerId = pOuuCustomerId_
    , _ouuKey = Nothing
    , _ouuOAuthToken = Nothing
    , _ouuFields = Nothing
    }

-- | Multipart request metadata.
ouuOrgUnit :: Lens' OrgUnitsUpdate' OrgUnit
ouuOrgUnit
  = lens _ouuOrgUnit (\ s a -> s{_ouuOrgUnit = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ouuQuotaUser :: Lens' OrgUnitsUpdate' (Maybe Text)
ouuQuotaUser
  = lens _ouuQuotaUser (\ s a -> s{_ouuQuotaUser = a})

-- | Returns response with indentations and line breaks.
ouuPrettyPrint :: Lens' OrgUnitsUpdate' Bool
ouuPrettyPrint
  = lens _ouuPrettyPrint
      (\ s a -> s{_ouuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ouuUserIP :: Lens' OrgUnitsUpdate' (Maybe Text)
ouuUserIP
  = lens _ouuUserIP (\ s a -> s{_ouuUserIP = a})

-- | Full path of the organization unit or its Id
ouuOrgUnitPath :: Lens' OrgUnitsUpdate' Text
ouuOrgUnitPath
  = lens _ouuOrgUnitPath
      (\ s a -> s{_ouuOrgUnitPath = a})

-- | Immutable id of the Google Apps account
ouuCustomerId :: Lens' OrgUnitsUpdate' Text
ouuCustomerId
  = lens _ouuCustomerId
      (\ s a -> s{_ouuCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ouuKey :: Lens' OrgUnitsUpdate' (Maybe Key)
ouuKey = lens _ouuKey (\ s a -> s{_ouuKey = a})

-- | OAuth 2.0 token for the current user.
ouuOAuthToken :: Lens' OrgUnitsUpdate' (Maybe OAuthToken)
ouuOAuthToken
  = lens _ouuOAuthToken
      (\ s a -> s{_ouuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ouuFields :: Lens' OrgUnitsUpdate' (Maybe Text)
ouuFields
  = lens _ouuFields (\ s a -> s{_ouuFields = a})

instance GoogleAuth OrgUnitsUpdate' where
        authKey = ouuKey . _Just
        authToken = ouuOAuthToken . _Just

instance GoogleRequest OrgUnitsUpdate' where
        type Rs OrgUnitsUpdate' = OrgUnit
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u OrgUnitsUpdate'{..}
          = go _ouuQuotaUser (Just _ouuPrettyPrint) _ouuUserIP
              _ouuOrgUnitPath
              _ouuCustomerId
              _ouuKey
              _ouuOAuthToken
              _ouuFields
              (Just AltJSON)
              _ouuOrgUnit
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OrgUnitsUpdateResource)
                      r
                      u
