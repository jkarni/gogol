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
-- Module      : Network.Google.Resource.GamesManagement.Achievements.ResetMultipleForAllPlayers
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets achievements with the given IDs for all players. This method is
-- only available to user accounts for your developer console. Only draft
-- achievements may be reset.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementAchievementsResetMultipleForAllPlayers@.
module Network.Google.Resource.GamesManagement.Achievements.ResetMultipleForAllPlayers
    (
    -- * REST Resource
      AchievementsResetMultipleForAllPlayersResource

    -- * Creating a Request
    , achievementsResetMultipleForAllPlayers'
    , AchievementsResetMultipleForAllPlayers'

    -- * Request Lenses
    , armfapQuotaUser
    , armfapPrettyPrint
    , armfapUserIP
    , armfapAchievementResetMultipleForAllRequest
    , armfapKey
    , armfapOAuthToken
    , armfapFields
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementAchievementsResetMultipleForAllPlayers@ which the
-- 'AchievementsResetMultipleForAllPlayers'' request conforms to.
type AchievementsResetMultipleForAllPlayersResource =
     "achievements" :>
       "resetMultipleForAllPlayers" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] AchievementResetMultipleForAllRequest
                         :> Post '[JSON] ()

-- | Resets achievements with the given IDs for all players. This method is
-- only available to user accounts for your developer console. Only draft
-- achievements may be reset.
--
-- /See:/ 'achievementsResetMultipleForAllPlayers'' smart constructor.
data AchievementsResetMultipleForAllPlayers' = AchievementsResetMultipleForAllPlayers'
    { _armfapQuotaUser                             :: !(Maybe Text)
    , _armfapPrettyPrint                           :: !Bool
    , _armfapUserIP                                :: !(Maybe Text)
    , _armfapAchievementResetMultipleForAllRequest :: !AchievementResetMultipleForAllRequest
    , _armfapKey                                   :: !(Maybe Key)
    , _armfapOAuthToken                            :: !(Maybe OAuthToken)
    , _armfapFields                                :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AchievementsResetMultipleForAllPlayers'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'armfapQuotaUser'
--
-- * 'armfapPrettyPrint'
--
-- * 'armfapUserIP'
--
-- * 'armfapAchievementResetMultipleForAllRequest'
--
-- * 'armfapKey'
--
-- * 'armfapOAuthToken'
--
-- * 'armfapFields'
achievementsResetMultipleForAllPlayers'
    :: AchievementResetMultipleForAllRequest -- ^ 'AchievementResetMultipleForAllRequest'
    -> AchievementsResetMultipleForAllPlayers'
achievementsResetMultipleForAllPlayers' pArmfapAchievementResetMultipleForAllRequest_ =
    AchievementsResetMultipleForAllPlayers'
    { _armfapQuotaUser = Nothing
    , _armfapPrettyPrint = True
    , _armfapUserIP = Nothing
    , _armfapAchievementResetMultipleForAllRequest = pArmfapAchievementResetMultipleForAllRequest_
    , _armfapKey = Nothing
    , _armfapOAuthToken = Nothing
    , _armfapFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
armfapQuotaUser :: Lens' AchievementsResetMultipleForAllPlayers' (Maybe Text)
armfapQuotaUser
  = lens _armfapQuotaUser
      (\ s a -> s{_armfapQuotaUser = a})

-- | Returns response with indentations and line breaks.
armfapPrettyPrint :: Lens' AchievementsResetMultipleForAllPlayers' Bool
armfapPrettyPrint
  = lens _armfapPrettyPrint
      (\ s a -> s{_armfapPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
armfapUserIP :: Lens' AchievementsResetMultipleForAllPlayers' (Maybe Text)
armfapUserIP
  = lens _armfapUserIP (\ s a -> s{_armfapUserIP = a})

-- | Multipart request metadata.
armfapAchievementResetMultipleForAllRequest :: Lens' AchievementsResetMultipleForAllPlayers' AchievementResetMultipleForAllRequest
armfapAchievementResetMultipleForAllRequest
  = lens _armfapAchievementResetMultipleForAllRequest
      (\ s a ->
         s{_armfapAchievementResetMultipleForAllRequest = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
armfapKey :: Lens' AchievementsResetMultipleForAllPlayers' (Maybe Key)
armfapKey
  = lens _armfapKey (\ s a -> s{_armfapKey = a})

-- | OAuth 2.0 token for the current user.
armfapOAuthToken :: Lens' AchievementsResetMultipleForAllPlayers' (Maybe OAuthToken)
armfapOAuthToken
  = lens _armfapOAuthToken
      (\ s a -> s{_armfapOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
armfapFields :: Lens' AchievementsResetMultipleForAllPlayers' (Maybe Text)
armfapFields
  = lens _armfapFields (\ s a -> s{_armfapFields = a})

instance GoogleAuth
         AchievementsResetMultipleForAllPlayers' where
        authKey = armfapKey . _Just
        authToken = armfapOAuthToken . _Just

instance GoogleRequest
         AchievementsResetMultipleForAllPlayers' where
        type Rs AchievementsResetMultipleForAllPlayers' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u
          AchievementsResetMultipleForAllPlayers'{..}
          = go _armfapQuotaUser (Just _armfapPrettyPrint)
              _armfapUserIP
              _armfapKey
              _armfapOAuthToken
              _armfapFields
              (Just AltJSON)
              _armfapAchievementResetMultipleForAllRequest
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy AchievementsResetMultipleForAllPlayersResource)
                      r
                      u
