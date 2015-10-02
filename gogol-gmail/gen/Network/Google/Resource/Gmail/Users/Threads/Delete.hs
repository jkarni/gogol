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
-- Module      : Network.Google.Resource.Gmail.Users.Threads.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Immediately and permanently deletes the specified thread. This operation
-- cannot be undone. Prefer threads.trash instead.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersThreadsDelete@.
module Network.Google.Resource.Gmail.Users.Threads.Delete
    (
    -- * REST Resource
      UsersThreadsDeleteResource

    -- * Creating a Request
    , usersThreadsDelete'
    , UsersThreadsDelete'

    -- * Request Lenses
    , utdQuotaUser
    , utdPrettyPrint
    , utdUserIP
    , utdUserId
    , utdKey
    , utdId
    , utdOAuthToken
    , utdFields
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersThreadsDelete@ which the
-- 'UsersThreadsDelete'' request conforms to.
type UsersThreadsDeleteResource =
     Capture "userId" Text :>
       "threads" :>
         Capture "id" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Immediately and permanently deletes the specified thread. This operation
-- cannot be undone. Prefer threads.trash instead.
--
-- /See:/ 'usersThreadsDelete'' smart constructor.
data UsersThreadsDelete' = UsersThreadsDelete'
    { _utdQuotaUser   :: !(Maybe Text)
    , _utdPrettyPrint :: !Bool
    , _utdUserIP      :: !(Maybe Text)
    , _utdUserId      :: !Text
    , _utdKey         :: !(Maybe Key)
    , _utdId          :: !Text
    , _utdOAuthToken  :: !(Maybe OAuthToken)
    , _utdFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersThreadsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utdQuotaUser'
--
-- * 'utdPrettyPrint'
--
-- * 'utdUserIP'
--
-- * 'utdUserId'
--
-- * 'utdKey'
--
-- * 'utdId'
--
-- * 'utdOAuthToken'
--
-- * 'utdFields'
usersThreadsDelete'
    :: Text -- ^ 'id'
    -> Text
    -> UsersThreadsDelete'
usersThreadsDelete' pUtdUserId_ pUtdId_ =
    UsersThreadsDelete'
    { _utdQuotaUser = Nothing
    , _utdPrettyPrint = True
    , _utdUserIP = Nothing
    , _utdUserId = pUtdUserId_
    , _utdKey = Nothing
    , _utdId = pUtdId_
    , _utdOAuthToken = Nothing
    , _utdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
utdQuotaUser :: Lens' UsersThreadsDelete' (Maybe Text)
utdQuotaUser
  = lens _utdQuotaUser (\ s a -> s{_utdQuotaUser = a})

-- | Returns response with indentations and line breaks.
utdPrettyPrint :: Lens' UsersThreadsDelete' Bool
utdPrettyPrint
  = lens _utdPrettyPrint
      (\ s a -> s{_utdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
utdUserIP :: Lens' UsersThreadsDelete' (Maybe Text)
utdUserIP
  = lens _utdUserIP (\ s a -> s{_utdUserIP = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
utdUserId :: Lens' UsersThreadsDelete' Text
utdUserId
  = lens _utdUserId (\ s a -> s{_utdUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
utdKey :: Lens' UsersThreadsDelete' (Maybe Key)
utdKey = lens _utdKey (\ s a -> s{_utdKey = a})

-- | ID of the Thread to delete.
utdId :: Lens' UsersThreadsDelete' Text
utdId = lens _utdId (\ s a -> s{_utdId = a})

-- | OAuth 2.0 token for the current user.
utdOAuthToken :: Lens' UsersThreadsDelete' (Maybe OAuthToken)
utdOAuthToken
  = lens _utdOAuthToken
      (\ s a -> s{_utdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
utdFields :: Lens' UsersThreadsDelete' (Maybe Text)
utdFields
  = lens _utdFields (\ s a -> s{_utdFields = a})

instance GoogleAuth UsersThreadsDelete' where
        authKey = utdKey . _Just
        authToken = utdOAuthToken . _Just

instance GoogleRequest UsersThreadsDelete' where
        type Rs UsersThreadsDelete' = ()
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersThreadsDelete'{..}
          = go _utdQuotaUser (Just _utdPrettyPrint) _utdUserIP
              _utdUserId
              _utdKey
              _utdId
              _utdOAuthToken
              _utdFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersThreadsDeleteResource)
                      r
                      u
