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
-- Module      : Network.Google.Resource.Compute.InstanceTemplates.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates an instance template in the specified project using the data
-- that is included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceTemplatesInsert@.
module Network.Google.Resource.Compute.InstanceTemplates.Insert
    (
    -- * REST Resource
      InstanceTemplatesInsertResource

    -- * Creating a Request
    , instanceTemplatesInsert'
    , InstanceTemplatesInsert'

    -- * Request Lenses
    , itiQuotaUser
    , itiPrettyPrint
    , itiProject
    , itiUserIP
    , itiInstanceTemplate
    , itiKey
    , itiOAuthToken
    , itiFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceTemplatesInsert@ which the
-- 'InstanceTemplatesInsert'' request conforms to.
type InstanceTemplatesInsertResource =
     Capture "project" Text :>
       "global" :>
         "instanceTemplates" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] InstanceTemplate :>
                           Post '[JSON] Operation

-- | Creates an instance template in the specified project using the data
-- that is included in the request.
--
-- /See:/ 'instanceTemplatesInsert'' smart constructor.
data InstanceTemplatesInsert' = InstanceTemplatesInsert'
    { _itiQuotaUser        :: !(Maybe Text)
    , _itiPrettyPrint      :: !Bool
    , _itiProject          :: !Text
    , _itiUserIP           :: !(Maybe Text)
    , _itiInstanceTemplate :: !InstanceTemplate
    , _itiKey              :: !(Maybe Key)
    , _itiOAuthToken       :: !(Maybe OAuthToken)
    , _itiFields           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceTemplatesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itiQuotaUser'
--
-- * 'itiPrettyPrint'
--
-- * 'itiProject'
--
-- * 'itiUserIP'
--
-- * 'itiInstanceTemplate'
--
-- * 'itiKey'
--
-- * 'itiOAuthToken'
--
-- * 'itiFields'
instanceTemplatesInsert'
    :: Text -- ^ 'project'
    -> InstanceTemplate -- ^ 'InstanceTemplate'
    -> InstanceTemplatesInsert'
instanceTemplatesInsert' pItiProject_ pItiInstanceTemplate_ =
    InstanceTemplatesInsert'
    { _itiQuotaUser = Nothing
    , _itiPrettyPrint = True
    , _itiProject = pItiProject_
    , _itiUserIP = Nothing
    , _itiInstanceTemplate = pItiInstanceTemplate_
    , _itiKey = Nothing
    , _itiOAuthToken = Nothing
    , _itiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
itiQuotaUser :: Lens' InstanceTemplatesInsert' (Maybe Text)
itiQuotaUser
  = lens _itiQuotaUser (\ s a -> s{_itiQuotaUser = a})

-- | Returns response with indentations and line breaks.
itiPrettyPrint :: Lens' InstanceTemplatesInsert' Bool
itiPrettyPrint
  = lens _itiPrettyPrint
      (\ s a -> s{_itiPrettyPrint = a})

-- | The project ID for this request.
itiProject :: Lens' InstanceTemplatesInsert' Text
itiProject
  = lens _itiProject (\ s a -> s{_itiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
itiUserIP :: Lens' InstanceTemplatesInsert' (Maybe Text)
itiUserIP
  = lens _itiUserIP (\ s a -> s{_itiUserIP = a})

-- | Multipart request metadata.
itiInstanceTemplate :: Lens' InstanceTemplatesInsert' InstanceTemplate
itiInstanceTemplate
  = lens _itiInstanceTemplate
      (\ s a -> s{_itiInstanceTemplate = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
itiKey :: Lens' InstanceTemplatesInsert' (Maybe Key)
itiKey = lens _itiKey (\ s a -> s{_itiKey = a})

-- | OAuth 2.0 token for the current user.
itiOAuthToken :: Lens' InstanceTemplatesInsert' (Maybe OAuthToken)
itiOAuthToken
  = lens _itiOAuthToken
      (\ s a -> s{_itiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
itiFields :: Lens' InstanceTemplatesInsert' (Maybe Text)
itiFields
  = lens _itiFields (\ s a -> s{_itiFields = a})

instance GoogleAuth InstanceTemplatesInsert' where
        authKey = itiKey . _Just
        authToken = itiOAuthToken . _Just

instance GoogleRequest InstanceTemplatesInsert' where
        type Rs InstanceTemplatesInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstanceTemplatesInsert'{..}
          = go _itiQuotaUser (Just _itiPrettyPrint) _itiProject
              _itiUserIP
              _itiKey
              _itiOAuthToken
              _itiFields
              (Just AltJSON)
              _itiInstanceTemplate
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstanceTemplatesInsertResource)
                      r
                      u
