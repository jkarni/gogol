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
-- Module      : Network.Google.Resource.Drive.Files.Touch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Set the file\'s updated time to the current server time.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveFilesTouch@.
module Network.Google.Resource.Drive.Files.Touch
    (
    -- * REST Resource
      FilesTouchResource

    -- * Creating a Request
    , filesTouch'
    , FilesTouch'

    -- * Request Lenses
    , ftQuotaUser
    , ftPrettyPrint
    , ftUserIP
    , ftKey
    , ftFileId
    , ftOAuthToken
    , ftFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveFilesTouch@ which the
-- 'FilesTouch'' request conforms to.
type FilesTouchResource =
     "files" :>
       Capture "fileId" Text :>
         "touch" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :> Post '[JSON] File

-- | Set the file\'s updated time to the current server time.
--
-- /See:/ 'filesTouch'' smart constructor.
data FilesTouch' = FilesTouch'
    { _ftQuotaUser   :: !(Maybe Text)
    , _ftPrettyPrint :: !Bool
    , _ftUserIP      :: !(Maybe Text)
    , _ftKey         :: !(Maybe Key)
    , _ftFileId      :: !Text
    , _ftOAuthToken  :: !(Maybe OAuthToken)
    , _ftFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesTouch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ftQuotaUser'
--
-- * 'ftPrettyPrint'
--
-- * 'ftUserIP'
--
-- * 'ftKey'
--
-- * 'ftFileId'
--
-- * 'ftOAuthToken'
--
-- * 'ftFields'
filesTouch'
    :: Text -- ^ 'fileId'
    -> FilesTouch'
filesTouch' pFtFileId_ =
    FilesTouch'
    { _ftQuotaUser = Nothing
    , _ftPrettyPrint = True
    , _ftUserIP = Nothing
    , _ftKey = Nothing
    , _ftFileId = pFtFileId_
    , _ftOAuthToken = Nothing
    , _ftFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ftQuotaUser :: Lens' FilesTouch' (Maybe Text)
ftQuotaUser
  = lens _ftQuotaUser (\ s a -> s{_ftQuotaUser = a})

-- | Returns response with indentations and line breaks.
ftPrettyPrint :: Lens' FilesTouch' Bool
ftPrettyPrint
  = lens _ftPrettyPrint
      (\ s a -> s{_ftPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ftUserIP :: Lens' FilesTouch' (Maybe Text)
ftUserIP = lens _ftUserIP (\ s a -> s{_ftUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ftKey :: Lens' FilesTouch' (Maybe Key)
ftKey = lens _ftKey (\ s a -> s{_ftKey = a})

-- | The ID of the file to update.
ftFileId :: Lens' FilesTouch' Text
ftFileId = lens _ftFileId (\ s a -> s{_ftFileId = a})

-- | OAuth 2.0 token for the current user.
ftOAuthToken :: Lens' FilesTouch' (Maybe OAuthToken)
ftOAuthToken
  = lens _ftOAuthToken (\ s a -> s{_ftOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ftFields :: Lens' FilesTouch' (Maybe Text)
ftFields = lens _ftFields (\ s a -> s{_ftFields = a})

instance GoogleAuth FilesTouch' where
        authKey = ftKey . _Just
        authToken = ftOAuthToken . _Just

instance GoogleRequest FilesTouch' where
        type Rs FilesTouch' = File
        request = requestWithRoute defReq driveURL
        requestWithRoute r u FilesTouch'{..}
          = go _ftQuotaUser (Just _ftPrettyPrint) _ftUserIP
              _ftKey
              _ftFileId
              _ftOAuthToken
              _ftFields
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy FilesTouchResource)
                      r
                      u
