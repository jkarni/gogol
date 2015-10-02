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
-- Module      : Network.Google.Resource.QPXExpress.Trips.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of flights.
--
-- /See:/ <http://developers.google.com/qpx-express QPX Express API Reference> for @QpxExpressTripsSearch@.
module Network.Google.Resource.QPXExpress.Trips.Search
    (
    -- * REST Resource
      TripsSearchResource

    -- * Creating a Request
    , tripsSearch'
    , TripsSearch'

    -- * Request Lenses
    , tsQuotaUser
    , tsPrettyPrint
    , tsUserIP
    , tsKey
    , tsOAuthToken
    , tsTripsSearchRequest
    , tsFields
    ) where

import           Network.Google.Prelude
import           Network.Google.QPXExpress.Types

-- | A resource alias for @QpxExpressTripsSearch@ which the
-- 'TripsSearch'' request conforms to.
type TripsSearchResource =
     "search" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TripsSearchRequest :>
                       Post '[JSON] TripsSearchResponse

-- | Returns a list of flights.
--
-- /See:/ 'tripsSearch'' smart constructor.
data TripsSearch' = TripsSearch'
    { _tsQuotaUser          :: !(Maybe Text)
    , _tsPrettyPrint        :: !Bool
    , _tsUserIP             :: !(Maybe Text)
    , _tsKey                :: !(Maybe Key)
    , _tsOAuthToken         :: !(Maybe OAuthToken)
    , _tsTripsSearchRequest :: !TripsSearchRequest
    , _tsFields             :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TripsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsQuotaUser'
--
-- * 'tsPrettyPrint'
--
-- * 'tsUserIP'
--
-- * 'tsKey'
--
-- * 'tsOAuthToken'
--
-- * 'tsTripsSearchRequest'
--
-- * 'tsFields'
tripsSearch'
    :: TripsSearchRequest -- ^ 'TripsSearchRequest'
    -> TripsSearch'
tripsSearch' pTsTripsSearchRequest_ =
    TripsSearch'
    { _tsQuotaUser = Nothing
    , _tsPrettyPrint = True
    , _tsUserIP = Nothing
    , _tsKey = Nothing
    , _tsOAuthToken = Nothing
    , _tsTripsSearchRequest = pTsTripsSearchRequest_
    , _tsFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tsQuotaUser :: Lens' TripsSearch' (Maybe Text)
tsQuotaUser
  = lens _tsQuotaUser (\ s a -> s{_tsQuotaUser = a})

-- | Returns response with indentations and line breaks.
tsPrettyPrint :: Lens' TripsSearch' Bool
tsPrettyPrint
  = lens _tsPrettyPrint
      (\ s a -> s{_tsPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tsUserIP :: Lens' TripsSearch' (Maybe Text)
tsUserIP = lens _tsUserIP (\ s a -> s{_tsUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tsKey :: Lens' TripsSearch' (Maybe Key)
tsKey = lens _tsKey (\ s a -> s{_tsKey = a})

-- | OAuth 2.0 token for the current user.
tsOAuthToken :: Lens' TripsSearch' (Maybe OAuthToken)
tsOAuthToken
  = lens _tsOAuthToken (\ s a -> s{_tsOAuthToken = a})

-- | Multipart request metadata.
tsTripsSearchRequest :: Lens' TripsSearch' TripsSearchRequest
tsTripsSearchRequest
  = lens _tsTripsSearchRequest
      (\ s a -> s{_tsTripsSearchRequest = a})

-- | Selector specifying which fields to include in a partial response.
tsFields :: Lens' TripsSearch' (Maybe Text)
tsFields = lens _tsFields (\ s a -> s{_tsFields = a})

instance GoogleAuth TripsSearch' where
        authKey = tsKey . _Just
        authToken = tsOAuthToken . _Just

instance GoogleRequest TripsSearch' where
        type Rs TripsSearch' = TripsSearchResponse
        request = requestWithRoute defReq qPXExpressURL
        requestWithRoute r u TripsSearch'{..}
          = go _tsQuotaUser (Just _tsPrettyPrint) _tsUserIP
              _tsKey
              _tsOAuthToken
              _tsFields
              (Just AltJSON)
              _tsTripsSearchRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TripsSearchResource)
                      r
                      u
