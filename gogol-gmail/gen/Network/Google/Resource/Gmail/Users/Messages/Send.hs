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
-- Module      : Network.Google.Resource.Gmail.Users.Messages.Send
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sends the specified message to the recipients in the To, Cc, and Bcc
-- headers.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @GmailUsersMessagesSend@.
module Network.Google.Resource.Gmail.Users.Messages.Send
    (
    -- * REST Resource
      UsersMessagesSendResource

    -- * Creating a Request
    , usersMessagesSend'
    , UsersMessagesSend'

    -- * Request Lenses
    , umsQuotaUser
    , umsPrettyPrint
    , umsUserIP
    , umsUserId
    , umsMedia
    , umsKey
    , umsOAuthToken
    , umsMessage
    , umsFields
    ) where

import           Network.Google.Gmail.Types
import           Network.Google.Prelude

-- | A resource alias for @GmailUsersMessagesSend@ which the
-- 'UsersMessagesSend'' request conforms to.
type UsersMessagesSendResource =
     Capture "userId" Text :>
       "messages" :>
         "send" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         MultipartRelated '[JSON] Message Body :>
                           Post '[JSON] Message

-- | Sends the specified message to the recipients in the To, Cc, and Bcc
-- headers.
--
-- /See:/ 'usersMessagesSend'' smart constructor.
data UsersMessagesSend' = UsersMessagesSend'
    { _umsQuotaUser   :: !(Maybe Text)
    , _umsPrettyPrint :: !Bool
    , _umsUserIP      :: !(Maybe Text)
    , _umsUserId      :: !Text
    , _umsMedia       :: !Body
    , _umsKey         :: !(Maybe Key)
    , _umsOAuthToken  :: !(Maybe OAuthToken)
    , _umsMessage     :: !Message
    , _umsFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersMessagesSend'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umsQuotaUser'
--
-- * 'umsPrettyPrint'
--
-- * 'umsUserIP'
--
-- * 'umsUserId'
--
-- * 'umsMedia'
--
-- * 'umsKey'
--
-- * 'umsOAuthToken'
--
-- * 'umsMessage'
--
-- * 'umsFields'
usersMessagesSend'
    :: Text -- ^ 'media'
    -> Body -- ^ 'Message'
    -> Message
    -> UsersMessagesSend'
usersMessagesSend' pUmsUserId_ pUmsMedia_ pUmsMessage_ =
    UsersMessagesSend'
    { _umsQuotaUser = Nothing
    , _umsPrettyPrint = True
    , _umsUserIP = Nothing
    , _umsUserId = pUmsUserId_
    , _umsMedia = pUmsMedia_
    , _umsKey = Nothing
    , _umsOAuthToken = Nothing
    , _umsMessage = pUmsMessage_
    , _umsFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
umsQuotaUser :: Lens' UsersMessagesSend' (Maybe Text)
umsQuotaUser
  = lens _umsQuotaUser (\ s a -> s{_umsQuotaUser = a})

-- | Returns response with indentations and line breaks.
umsPrettyPrint :: Lens' UsersMessagesSend' Bool
umsPrettyPrint
  = lens _umsPrettyPrint
      (\ s a -> s{_umsPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
umsUserIP :: Lens' UsersMessagesSend' (Maybe Text)
umsUserIP
  = lens _umsUserIP (\ s a -> s{_umsUserIP = a})

-- | The user\'s email address. The special value me can be used to indicate
-- the authenticated user.
umsUserId :: Lens' UsersMessagesSend' Text
umsUserId
  = lens _umsUserId (\ s a -> s{_umsUserId = a})

umsMedia :: Lens' UsersMessagesSend' Body
umsMedia = lens _umsMedia (\ s a -> s{_umsMedia = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umsKey :: Lens' UsersMessagesSend' (Maybe Key)
umsKey = lens _umsKey (\ s a -> s{_umsKey = a})

-- | OAuth 2.0 token for the current user.
umsOAuthToken :: Lens' UsersMessagesSend' (Maybe OAuthToken)
umsOAuthToken
  = lens _umsOAuthToken
      (\ s a -> s{_umsOAuthToken = a})

-- | Multipart request metadata.
umsMessage :: Lens' UsersMessagesSend' Message
umsMessage
  = lens _umsMessage (\ s a -> s{_umsMessage = a})

-- | Selector specifying which fields to include in a partial response.
umsFields :: Lens' UsersMessagesSend' (Maybe Text)
umsFields
  = lens _umsFields (\ s a -> s{_umsFields = a})

instance GoogleAuth UsersMessagesSend' where
        authKey = umsKey . _Just
        authToken = umsOAuthToken . _Just

instance GoogleRequest UsersMessagesSend' where
        type Rs UsersMessagesSend' = Message
        request = requestWithRoute defReq gmailURL
        requestWithRoute r u UsersMessagesSend'{..}
          = go _umsQuotaUser (Just _umsPrettyPrint) _umsUserIP
              _umsUserId
              _umsMedia
              _umsKey
              _umsOAuthToken
              _umsFields
              (Just AltJSON)
              _umsMessage
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UsersMessagesSendResource)
                      r
                      u
