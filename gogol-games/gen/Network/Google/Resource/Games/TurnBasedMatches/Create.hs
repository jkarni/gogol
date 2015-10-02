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
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a turn-based match.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesTurnBasedMatchesCreate@.
module Network.Google.Resource.Games.TurnBasedMatches.Create
    (
    -- * REST Resource
      TurnBasedMatchesCreateResource

    -- * Creating a Request
    , turnBasedMatchesCreate'
    , TurnBasedMatchesCreate'

    -- * Request Lenses
    , turQuotaUser
    , turPrettyPrint
    , turUserIP
    , turKey
    , turTurnBasedMatchCreateRequest
    , turLanguage
    , turOAuthToken
    , turFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesCreate@ which the
-- 'TurnBasedMatchesCreate'' request conforms to.
type TurnBasedMatchesCreateResource =
     "turnbasedmatches" :>
       "create" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "language" Text :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] TurnBasedMatchCreateRequest :>
                           Post '[JSON] TurnBasedMatch

-- | Create a turn-based match.
--
-- /See:/ 'turnBasedMatchesCreate'' smart constructor.
data TurnBasedMatchesCreate' = TurnBasedMatchesCreate'
    { _turQuotaUser                   :: !(Maybe Text)
    , _turPrettyPrint                 :: !Bool
    , _turUserIP                      :: !(Maybe Text)
    , _turKey                         :: !(Maybe Key)
    , _turTurnBasedMatchCreateRequest :: !TurnBasedMatchCreateRequest
    , _turLanguage                    :: !(Maybe Text)
    , _turOAuthToken                  :: !(Maybe OAuthToken)
    , _turFields                      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'turQuotaUser'
--
-- * 'turPrettyPrint'
--
-- * 'turUserIP'
--
-- * 'turKey'
--
-- * 'turTurnBasedMatchCreateRequest'
--
-- * 'turLanguage'
--
-- * 'turOAuthToken'
--
-- * 'turFields'
turnBasedMatchesCreate'
    :: TurnBasedMatchCreateRequest -- ^ 'TurnBasedMatchCreateRequest'
    -> TurnBasedMatchesCreate'
turnBasedMatchesCreate' pTurTurnBasedMatchCreateRequest_ =
    TurnBasedMatchesCreate'
    { _turQuotaUser = Nothing
    , _turPrettyPrint = True
    , _turUserIP = Nothing
    , _turKey = Nothing
    , _turTurnBasedMatchCreateRequest = pTurTurnBasedMatchCreateRequest_
    , _turLanguage = Nothing
    , _turOAuthToken = Nothing
    , _turFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
turQuotaUser :: Lens' TurnBasedMatchesCreate' (Maybe Text)
turQuotaUser
  = lens _turQuotaUser (\ s a -> s{_turQuotaUser = a})

-- | Returns response with indentations and line breaks.
turPrettyPrint :: Lens' TurnBasedMatchesCreate' Bool
turPrettyPrint
  = lens _turPrettyPrint
      (\ s a -> s{_turPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
turUserIP :: Lens' TurnBasedMatchesCreate' (Maybe Text)
turUserIP
  = lens _turUserIP (\ s a -> s{_turUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
turKey :: Lens' TurnBasedMatchesCreate' (Maybe Key)
turKey = lens _turKey (\ s a -> s{_turKey = a})

-- | Multipart request metadata.
turTurnBasedMatchCreateRequest :: Lens' TurnBasedMatchesCreate' TurnBasedMatchCreateRequest
turTurnBasedMatchCreateRequest
  = lens _turTurnBasedMatchCreateRequest
      (\ s a -> s{_turTurnBasedMatchCreateRequest = a})

-- | The preferred language to use for strings returned by this method.
turLanguage :: Lens' TurnBasedMatchesCreate' (Maybe Text)
turLanguage
  = lens _turLanguage (\ s a -> s{_turLanguage = a})

-- | OAuth 2.0 token for the current user.
turOAuthToken :: Lens' TurnBasedMatchesCreate' (Maybe OAuthToken)
turOAuthToken
  = lens _turOAuthToken
      (\ s a -> s{_turOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
turFields :: Lens' TurnBasedMatchesCreate' (Maybe Text)
turFields
  = lens _turFields (\ s a -> s{_turFields = a})

instance GoogleAuth TurnBasedMatchesCreate' where
        authKey = turKey . _Just
        authToken = turOAuthToken . _Just

instance GoogleRequest TurnBasedMatchesCreate' where
        type Rs TurnBasedMatchesCreate' = TurnBasedMatch
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u TurnBasedMatchesCreate'{..}
          = go _turQuotaUser (Just _turPrettyPrint) _turUserIP
              _turKey
              _turLanguage
              _turOAuthToken
              _turFields
              (Just AltJSON)
              _turTurnBasedMatchCreateRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TurnBasedMatchesCreateResource)
                      r
                      u
