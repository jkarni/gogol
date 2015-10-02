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
-- Module      : Network.Google.Resource.Directory.Groups.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update Group
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryGroupsUpdate@.
module Network.Google.Resource.Directory.Groups.Update
    (
    -- * REST Resource
      GroupsUpdateResource

    -- * Creating a Request
    , groupsUpdate'
    , GroupsUpdate'

    -- * Request Lenses
    , guQuotaUser
    , guGroup
    , guPrettyPrint
    , guUserIP
    , guGroupKey
    , guKey
    , guOAuthToken
    , guFields
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryGroupsUpdate@ which the
-- 'GroupsUpdate'' request conforms to.
type GroupsUpdateResource =
     "groups" :>
       Capture "groupKey" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Group :> Put '[JSON] Group

-- | Update Group
--
-- /See:/ 'groupsUpdate'' smart constructor.
data GroupsUpdate' = GroupsUpdate'
    { _guQuotaUser   :: !(Maybe Text)
    , _guGroup       :: !Group
    , _guPrettyPrint :: !Bool
    , _guUserIP      :: !(Maybe Text)
    , _guGroupKey    :: !Text
    , _guKey         :: !(Maybe Key)
    , _guOAuthToken  :: !(Maybe OAuthToken)
    , _guFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'guQuotaUser'
--
-- * 'guGroup'
--
-- * 'guPrettyPrint'
--
-- * 'guUserIP'
--
-- * 'guGroupKey'
--
-- * 'guKey'
--
-- * 'guOAuthToken'
--
-- * 'guFields'
groupsUpdate'
    :: Group -- ^ 'Group'
    -> Text -- ^ 'groupKey'
    -> GroupsUpdate'
groupsUpdate' pGuGroup_ pGuGroupKey_ =
    GroupsUpdate'
    { _guQuotaUser = Nothing
    , _guGroup = pGuGroup_
    , _guPrettyPrint = True
    , _guUserIP = Nothing
    , _guGroupKey = pGuGroupKey_
    , _guKey = Nothing
    , _guOAuthToken = Nothing
    , _guFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
guQuotaUser :: Lens' GroupsUpdate' (Maybe Text)
guQuotaUser
  = lens _guQuotaUser (\ s a -> s{_guQuotaUser = a})

-- | Multipart request metadata.
guGroup :: Lens' GroupsUpdate' Group
guGroup = lens _guGroup (\ s a -> s{_guGroup = a})

-- | Returns response with indentations and line breaks.
guPrettyPrint :: Lens' GroupsUpdate' Bool
guPrettyPrint
  = lens _guPrettyPrint
      (\ s a -> s{_guPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
guUserIP :: Lens' GroupsUpdate' (Maybe Text)
guUserIP = lens _guUserIP (\ s a -> s{_guUserIP = a})

-- | Email or immutable Id of the group. If Id, it should match with id of
-- group object
guGroupKey :: Lens' GroupsUpdate' Text
guGroupKey
  = lens _guGroupKey (\ s a -> s{_guGroupKey = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
guKey :: Lens' GroupsUpdate' (Maybe Key)
guKey = lens _guKey (\ s a -> s{_guKey = a})

-- | OAuth 2.0 token for the current user.
guOAuthToken :: Lens' GroupsUpdate' (Maybe OAuthToken)
guOAuthToken
  = lens _guOAuthToken (\ s a -> s{_guOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
guFields :: Lens' GroupsUpdate' (Maybe Text)
guFields = lens _guFields (\ s a -> s{_guFields = a})

instance GoogleAuth GroupsUpdate' where
        authKey = guKey . _Just
        authToken = guOAuthToken . _Just

instance GoogleRequest GroupsUpdate' where
        type Rs GroupsUpdate' = Group
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u GroupsUpdate'{..}
          = go _guQuotaUser (Just _guPrettyPrint) _guUserIP
              _guGroupKey
              _guKey
              _guOAuthToken
              _guFields
              (Just AltJSON)
              _guGroup
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GroupsUpdateResource)
                      r
                      u
