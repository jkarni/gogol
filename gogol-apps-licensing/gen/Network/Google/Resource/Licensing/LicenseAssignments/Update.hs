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
-- Module      : Network.Google.Resource.Licensing.LicenseAssignments.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Assign License.
--
-- /See:/ <https://developers.google.com/google-apps/licensing/ Enterprise License Manager API Reference> for @LicensingLicenseAssignmentsUpdate@.
module Network.Google.Resource.Licensing.LicenseAssignments.Update
    (
    -- * REST Resource
      LicenseAssignmentsUpdateResource

    -- * Creating a Request
    , licenseAssignmentsUpdate'
    , LicenseAssignmentsUpdate'

    -- * Request Lenses
    , lauQuotaUser
    , lauPrettyPrint
    , lauUserIP
    , lauLicenseAssignment
    , lauSkuId
    , lauUserId
    , lauKey
    , lauOAuthToken
    , lauProductId
    , lauFields
    ) where

import           Network.Google.AppsLicensing.Types
import           Network.Google.Prelude

-- | A resource alias for @LicensingLicenseAssignmentsUpdate@ which the
-- 'LicenseAssignmentsUpdate'' request conforms to.
type LicenseAssignmentsUpdateResource =
     Capture "productId" Text :>
       "sku" :>
         Capture "skuId" Text :>
           "user" :>
             Capture "userId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] LicenseAssignment :>
                               Put '[JSON] LicenseAssignment

-- | Assign License.
--
-- /See:/ 'licenseAssignmentsUpdate'' smart constructor.
data LicenseAssignmentsUpdate' = LicenseAssignmentsUpdate'
    { _lauQuotaUser         :: !(Maybe Text)
    , _lauPrettyPrint       :: !Bool
    , _lauUserIP            :: !(Maybe Text)
    , _lauLicenseAssignment :: !LicenseAssignment
    , _lauSkuId             :: !Text
    , _lauUserId            :: !Text
    , _lauKey               :: !(Maybe Key)
    , _lauOAuthToken        :: !(Maybe OAuthToken)
    , _lauProductId         :: !Text
    , _lauFields            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LicenseAssignmentsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lauQuotaUser'
--
-- * 'lauPrettyPrint'
--
-- * 'lauUserIP'
--
-- * 'lauLicenseAssignment'
--
-- * 'lauSkuId'
--
-- * 'lauUserId'
--
-- * 'lauKey'
--
-- * 'lauOAuthToken'
--
-- * 'lauProductId'
--
-- * 'lauFields'
licenseAssignmentsUpdate'
    :: LicenseAssignment -- ^ 'LicenseAssignment'
    -> Text -- ^ 'skuId'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'productId'
    -> LicenseAssignmentsUpdate'
licenseAssignmentsUpdate' pLauLicenseAssignment_ pLauSkuId_ pLauUserId_ pLauProductId_ =
    LicenseAssignmentsUpdate'
    { _lauQuotaUser = Nothing
    , _lauPrettyPrint = True
    , _lauUserIP = Nothing
    , _lauLicenseAssignment = pLauLicenseAssignment_
    , _lauSkuId = pLauSkuId_
    , _lauUserId = pLauUserId_
    , _lauKey = Nothing
    , _lauOAuthToken = Nothing
    , _lauProductId = pLauProductId_
    , _lauFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
lauQuotaUser :: Lens' LicenseAssignmentsUpdate' (Maybe Text)
lauQuotaUser
  = lens _lauQuotaUser (\ s a -> s{_lauQuotaUser = a})

-- | Returns response with indentations and line breaks.
lauPrettyPrint :: Lens' LicenseAssignmentsUpdate' Bool
lauPrettyPrint
  = lens _lauPrettyPrint
      (\ s a -> s{_lauPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
lauUserIP :: Lens' LicenseAssignmentsUpdate' (Maybe Text)
lauUserIP
  = lens _lauUserIP (\ s a -> s{_lauUserIP = a})

-- | Multipart request metadata.
lauLicenseAssignment :: Lens' LicenseAssignmentsUpdate' LicenseAssignment
lauLicenseAssignment
  = lens _lauLicenseAssignment
      (\ s a -> s{_lauLicenseAssignment = a})

-- | Name for sku for which license would be revoked
lauSkuId :: Lens' LicenseAssignmentsUpdate' Text
lauSkuId = lens _lauSkuId (\ s a -> s{_lauSkuId = a})

-- | email id or unique Id of the user
lauUserId :: Lens' LicenseAssignmentsUpdate' Text
lauUserId
  = lens _lauUserId (\ s a -> s{_lauUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
lauKey :: Lens' LicenseAssignmentsUpdate' (Maybe Key)
lauKey = lens _lauKey (\ s a -> s{_lauKey = a})

-- | OAuth 2.0 token for the current user.
lauOAuthToken :: Lens' LicenseAssignmentsUpdate' (Maybe OAuthToken)
lauOAuthToken
  = lens _lauOAuthToken
      (\ s a -> s{_lauOAuthToken = a})

-- | Name for product
lauProductId :: Lens' LicenseAssignmentsUpdate' Text
lauProductId
  = lens _lauProductId (\ s a -> s{_lauProductId = a})

-- | Selector specifying which fields to include in a partial response.
lauFields :: Lens' LicenseAssignmentsUpdate' (Maybe Text)
lauFields
  = lens _lauFields (\ s a -> s{_lauFields = a})

instance GoogleAuth LicenseAssignmentsUpdate' where
        authKey = lauKey . _Just
        authToken = lauOAuthToken . _Just

instance GoogleRequest LicenseAssignmentsUpdate'
         where
        type Rs LicenseAssignmentsUpdate' = LicenseAssignment
        request = requestWithRoute defReq appsLicensingURL
        requestWithRoute r u LicenseAssignmentsUpdate'{..}
          = go _lauQuotaUser (Just _lauPrettyPrint) _lauUserIP
              _lauSkuId
              _lauUserId
              _lauKey
              _lauOAuthToken
              _lauProductId
              _lauFields
              (Just AltJSON)
              _lauLicenseAssignment
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LicenseAssignmentsUpdateResource)
                      r
                      u
