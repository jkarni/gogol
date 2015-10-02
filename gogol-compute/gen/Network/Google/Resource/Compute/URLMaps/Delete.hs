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
-- Module      : Network.Google.Resource.Compute.URLMaps.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified UrlMap resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeURLMapsDelete@.
module Network.Google.Resource.Compute.URLMaps.Delete
    (
    -- * REST Resource
      UrlMapsDeleteResource

    -- * Creating a Request
    , uRLMapsDelete'
    , URLMapsDelete'

    -- * Request Lenses
    , umdQuotaUser
    , umdURLMap
    , umdPrettyPrint
    , umdProject
    , umdUserIP
    , umdKey
    , umdOAuthToken
    , umdFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeURLMapsDelete@ which the
-- 'URLMapsDelete'' request conforms to.
type UrlMapsDeleteResource =
     Capture "project" Text :>
       "global" :>
         "urlMaps" :>
           Capture "urlMap" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified UrlMap resource.
--
-- /See:/ 'uRLMapsDelete'' smart constructor.
data URLMapsDelete' = URLMapsDelete'
    { _umdQuotaUser   :: !(Maybe Text)
    , _umdURLMap      :: !Text
    , _umdPrettyPrint :: !Bool
    , _umdProject     :: !Text
    , _umdUserIP      :: !(Maybe Text)
    , _umdKey         :: !(Maybe Key)
    , _umdOAuthToken  :: !(Maybe OAuthToken)
    , _umdFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMapsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umdQuotaUser'
--
-- * 'umdURLMap'
--
-- * 'umdPrettyPrint'
--
-- * 'umdProject'
--
-- * 'umdUserIP'
--
-- * 'umdKey'
--
-- * 'umdOAuthToken'
--
-- * 'umdFields'
uRLMapsDelete'
    :: Text -- ^ 'urlMap'
    -> Text -- ^ 'project'
    -> URLMapsDelete'
uRLMapsDelete' pUmdURLMap_ pUmdProject_ =
    URLMapsDelete'
    { _umdQuotaUser = Nothing
    , _umdURLMap = pUmdURLMap_
    , _umdPrettyPrint = True
    , _umdProject = pUmdProject_
    , _umdUserIP = Nothing
    , _umdKey = Nothing
    , _umdOAuthToken = Nothing
    , _umdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
umdQuotaUser :: Lens' URLMapsDelete' (Maybe Text)
umdQuotaUser
  = lens _umdQuotaUser (\ s a -> s{_umdQuotaUser = a})

-- | Name of the UrlMap resource to delete.
umdURLMap :: Lens' URLMapsDelete' Text
umdURLMap
  = lens _umdURLMap (\ s a -> s{_umdURLMap = a})

-- | Returns response with indentations and line breaks.
umdPrettyPrint :: Lens' URLMapsDelete' Bool
umdPrettyPrint
  = lens _umdPrettyPrint
      (\ s a -> s{_umdPrettyPrint = a})

-- | Name of the project scoping this request.
umdProject :: Lens' URLMapsDelete' Text
umdProject
  = lens _umdProject (\ s a -> s{_umdProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
umdUserIP :: Lens' URLMapsDelete' (Maybe Text)
umdUserIP
  = lens _umdUserIP (\ s a -> s{_umdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umdKey :: Lens' URLMapsDelete' (Maybe Key)
umdKey = lens _umdKey (\ s a -> s{_umdKey = a})

-- | OAuth 2.0 token for the current user.
umdOAuthToken :: Lens' URLMapsDelete' (Maybe OAuthToken)
umdOAuthToken
  = lens _umdOAuthToken
      (\ s a -> s{_umdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
umdFields :: Lens' URLMapsDelete' (Maybe Text)
umdFields
  = lens _umdFields (\ s a -> s{_umdFields = a})

instance GoogleAuth URLMapsDelete' where
        authKey = umdKey . _Just
        authToken = umdOAuthToken . _Just

instance GoogleRequest URLMapsDelete' where
        type Rs URLMapsDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u URLMapsDelete'{..}
          = go _umdQuotaUser _umdURLMap (Just _umdPrettyPrint)
              _umdProject
              _umdUserIP
              _umdKey
              _umdOAuthToken
              _umdFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UrlMapsDeleteResource)
                      r
                      u
