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
-- Module      : Network.Google.Resource.Compute.URLMaps.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the entire content of the UrlMap resource. This method supports
-- patch semantics.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeURLMapsPatch@.
module Network.Google.Resource.Compute.URLMaps.Patch
    (
    -- * REST Resource
      UrlMapsPatchResource

    -- * Creating a Request
    , uRLMapsPatch'
    , URLMapsPatch'

    -- * Request Lenses
    , umpQuotaUser
    , umpURLMap
    , umpPrettyPrint
    , umpURLMap
    , umpProject
    , umpUserIP
    , umpKey
    , umpOAuthToken
    , umpFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeURLMapsPatch@ which the
-- 'URLMapsPatch'' request conforms to.
type UrlMapsPatchResource =
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
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] URLMap :> Patch '[JSON] Operation

-- | Update the entire content of the UrlMap resource. This method supports
-- patch semantics.
--
-- /See:/ 'uRLMapsPatch'' smart constructor.
data URLMapsPatch' = URLMapsPatch'
    { _umpQuotaUser   :: !(Maybe Text)
    , _umpURLMap      :: !Text
    , _umpPrettyPrint :: !Bool
    , _umpURLMap      :: !URLMap
    , _umpProject     :: !Text
    , _umpUserIP      :: !(Maybe Text)
    , _umpKey         :: !(Maybe Key)
    , _umpOAuthToken  :: !(Maybe OAuthToken)
    , _umpFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMapsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umpQuotaUser'
--
-- * 'umpURLMap'
--
-- * 'umpPrettyPrint'
--
-- * 'umpURLMap'
--
-- * 'umpProject'
--
-- * 'umpUserIP'
--
-- * 'umpKey'
--
-- * 'umpOAuthToken'
--
-- * 'umpFields'
uRLMapsPatch'
    :: Text -- ^ 'urlMap'
    -> URLMap -- ^ 'URLMap'
    -> Text -- ^ 'project'
    -> URLMapsPatch'
uRLMapsPatch' pUmpURLMap_ pUmpURLMap_ pUmpProject_ =
    URLMapsPatch'
    { _umpQuotaUser = Nothing
    , _umpURLMap = pUmpURLMap_
    , _umpPrettyPrint = True
    , _umpURLMap = pUmpURLMap_
    , _umpProject = pUmpProject_
    , _umpUserIP = Nothing
    , _umpKey = Nothing
    , _umpOAuthToken = Nothing
    , _umpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
umpQuotaUser :: Lens' URLMapsPatch' (Maybe Text)
umpQuotaUser
  = lens _umpQuotaUser (\ s a -> s{_umpQuotaUser = a})

-- | Name of the UrlMap resource to update.
umpURLMap :: Lens' URLMapsPatch' Text
umpURLMap
  = lens _umpURLMap (\ s a -> s{_umpURLMap = a})

-- | Returns response with indentations and line breaks.
umpPrettyPrint :: Lens' URLMapsPatch' Bool
umpPrettyPrint
  = lens _umpPrettyPrint
      (\ s a -> s{_umpPrettyPrint = a})

-- | Multipart request metadata.
umpURLMap :: Lens' URLMapsPatch' URLMap
umpURLMap
  = lens _umpURLMap (\ s a -> s{_umpURLMap = a})

-- | Name of the project scoping this request.
umpProject :: Lens' URLMapsPatch' Text
umpProject
  = lens _umpProject (\ s a -> s{_umpProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
umpUserIP :: Lens' URLMapsPatch' (Maybe Text)
umpUserIP
  = lens _umpUserIP (\ s a -> s{_umpUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umpKey :: Lens' URLMapsPatch' (Maybe Key)
umpKey = lens _umpKey (\ s a -> s{_umpKey = a})

-- | OAuth 2.0 token for the current user.
umpOAuthToken :: Lens' URLMapsPatch' (Maybe OAuthToken)
umpOAuthToken
  = lens _umpOAuthToken
      (\ s a -> s{_umpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
umpFields :: Lens' URLMapsPatch' (Maybe Text)
umpFields
  = lens _umpFields (\ s a -> s{_umpFields = a})

instance GoogleAuth URLMapsPatch' where
        authKey = umpKey . _Just
        authToken = umpOAuthToken . _Just

instance GoogleRequest URLMapsPatch' where
        type Rs URLMapsPatch' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u URLMapsPatch'{..}
          = go _umpQuotaUser _umpURLMap (Just _umpPrettyPrint)
              _umpProject
              _umpUserIP
              _umpKey
              _umpOAuthToken
              _umpFields
              (Just AltJSON)
              _umpURLMap
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UrlMapsPatchResource)
                      r
                      u
