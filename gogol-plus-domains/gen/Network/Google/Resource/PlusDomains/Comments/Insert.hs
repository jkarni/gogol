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
-- Module      : Network.Google.Resource.PlusDomains.Comments.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new comment in reply to an activity.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsCommentsInsert@.
module Network.Google.Resource.PlusDomains.Comments.Insert
    (
    -- * REST Resource
      CommentsInsertResource

    -- * Creating a Request
    , commentsInsert'
    , CommentsInsert'

    -- * Request Lenses
    , ciQuotaUser
    , ciPrettyPrint
    , ciUserIP
    , ciActivityId
    , ciKey
    , ciOAuthToken
    , ciComment
    , ciFields
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsCommentsInsert@ which the
-- 'CommentsInsert'' request conforms to.
type CommentsInsertResource =
     "activities" :>
       Capture "activityId" Text :>
         "comments" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Comment :> Post '[JSON] Comment

-- | Create a new comment in reply to an activity.
--
-- /See:/ 'commentsInsert'' smart constructor.
data CommentsInsert' = CommentsInsert'
    { _ciQuotaUser   :: !(Maybe Text)
    , _ciPrettyPrint :: !Bool
    , _ciUserIP      :: !(Maybe Text)
    , _ciActivityId  :: !Text
    , _ciKey         :: !(Maybe Key)
    , _ciOAuthToken  :: !(Maybe OAuthToken)
    , _ciComment     :: !Comment
    , _ciFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CommentsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciQuotaUser'
--
-- * 'ciPrettyPrint'
--
-- * 'ciUserIP'
--
-- * 'ciActivityId'
--
-- * 'ciKey'
--
-- * 'ciOAuthToken'
--
-- * 'ciComment'
--
-- * 'ciFields'
commentsInsert'
    :: Text -- ^ 'activityId'
    -> Comment -- ^ 'Comment'
    -> CommentsInsert'
commentsInsert' pCiActivityId_ pCiComment_ =
    CommentsInsert'
    { _ciQuotaUser = Nothing
    , _ciPrettyPrint = True
    , _ciUserIP = Nothing
    , _ciActivityId = pCiActivityId_
    , _ciKey = Nothing
    , _ciOAuthToken = Nothing
    , _ciComment = pCiComment_
    , _ciFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ciQuotaUser :: Lens' CommentsInsert' (Maybe Text)
ciQuotaUser
  = lens _ciQuotaUser (\ s a -> s{_ciQuotaUser = a})

-- | Returns response with indentations and line breaks.
ciPrettyPrint :: Lens' CommentsInsert' Bool
ciPrettyPrint
  = lens _ciPrettyPrint
      (\ s a -> s{_ciPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ciUserIP :: Lens' CommentsInsert' (Maybe Text)
ciUserIP = lens _ciUserIP (\ s a -> s{_ciUserIP = a})

-- | The ID of the activity to reply to.
ciActivityId :: Lens' CommentsInsert' Text
ciActivityId
  = lens _ciActivityId (\ s a -> s{_ciActivityId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ciKey :: Lens' CommentsInsert' (Maybe Key)
ciKey = lens _ciKey (\ s a -> s{_ciKey = a})

-- | OAuth 2.0 token for the current user.
ciOAuthToken :: Lens' CommentsInsert' (Maybe OAuthToken)
ciOAuthToken
  = lens _ciOAuthToken (\ s a -> s{_ciOAuthToken = a})

-- | Multipart request metadata.
ciComment :: Lens' CommentsInsert' Comment
ciComment
  = lens _ciComment (\ s a -> s{_ciComment = a})

-- | Selector specifying which fields to include in a partial response.
ciFields :: Lens' CommentsInsert' (Maybe Text)
ciFields = lens _ciFields (\ s a -> s{_ciFields = a})

instance GoogleAuth CommentsInsert' where
        authKey = ciKey . _Just
        authToken = ciOAuthToken . _Just

instance GoogleRequest CommentsInsert' where
        type Rs CommentsInsert' = Comment
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u CommentsInsert'{..}
          = go _ciQuotaUser (Just _ciPrettyPrint) _ciUserIP
              _ciActivityId
              _ciKey
              _ciOAuthToken
              _ciFields
              (Just AltJSON)
              _ciComment
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CommentsInsertResource)
                      r
                      u
