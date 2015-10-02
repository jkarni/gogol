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
-- Module      : Network.Google.Resource.Storage.Objects.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of objects matching the criteria.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @StorageObjectsList@.
module Network.Google.Resource.Storage.Objects.List
    (
    -- * REST Resource
      ObjectsListResource

    -- * Creating a Request
    , objectsList'
    , ObjectsList'

    -- * Request Lenses
    , olQuotaUser
    , olPrettyPrint
    , olPrefix
    , olUserIP
    , olBucket
    , olVersions
    , olKey
    , olProjection
    , olPageToken
    , olOAuthToken
    , olDelimiter
    , olMaxResults
    , olFields
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageObjectsList@ which the
-- 'ObjectsList'' request conforms to.
type ObjectsListResource =
     "b" :>
       Capture "bucket" Text :>
         "o" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "prefix" Text :>
                 QueryParam "userIp" Text :>
                   QueryParam "versions" Bool :>
                     QueryParam "key" Key :>
                       QueryParam "projection" StorageObjectsListProjection
                         :>
                         QueryParam "pageToken" Text :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "delimiter" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] Objects

-- | Retrieves a list of objects matching the criteria.
--
-- /See:/ 'objectsList'' smart constructor.
data ObjectsList' = ObjectsList'
    { _olQuotaUser   :: !(Maybe Text)
    , _olPrettyPrint :: !Bool
    , _olPrefix      :: !(Maybe Text)
    , _olUserIP      :: !(Maybe Text)
    , _olBucket      :: !Text
    , _olVersions    :: !(Maybe Bool)
    , _olKey         :: !(Maybe Key)
    , _olProjection  :: !(Maybe StorageObjectsListProjection)
    , _olPageToken   :: !(Maybe Text)
    , _olOAuthToken  :: !(Maybe OAuthToken)
    , _olDelimiter   :: !(Maybe Text)
    , _olMaxResults  :: !(Maybe Word32)
    , _olFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olQuotaUser'
--
-- * 'olPrettyPrint'
--
-- * 'olPrefix'
--
-- * 'olUserIP'
--
-- * 'olBucket'
--
-- * 'olVersions'
--
-- * 'olKey'
--
-- * 'olProjection'
--
-- * 'olPageToken'
--
-- * 'olOAuthToken'
--
-- * 'olDelimiter'
--
-- * 'olMaxResults'
--
-- * 'olFields'
objectsList'
    :: Text -- ^ 'bucket'
    -> ObjectsList'
objectsList' pOlBucket_ =
    ObjectsList'
    { _olQuotaUser = Nothing
    , _olPrettyPrint = True
    , _olPrefix = Nothing
    , _olUserIP = Nothing
    , _olBucket = pOlBucket_
    , _olVersions = Nothing
    , _olKey = Nothing
    , _olProjection = Nothing
    , _olPageToken = Nothing
    , _olOAuthToken = Nothing
    , _olDelimiter = Nothing
    , _olMaxResults = Nothing
    , _olFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
olQuotaUser :: Lens' ObjectsList' (Maybe Text)
olQuotaUser
  = lens _olQuotaUser (\ s a -> s{_olQuotaUser = a})

-- | Returns response with indentations and line breaks.
olPrettyPrint :: Lens' ObjectsList' Bool
olPrettyPrint
  = lens _olPrettyPrint
      (\ s a -> s{_olPrettyPrint = a})

-- | Filter results to objects whose names begin with this prefix.
olPrefix :: Lens' ObjectsList' (Maybe Text)
olPrefix = lens _olPrefix (\ s a -> s{_olPrefix = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
olUserIP :: Lens' ObjectsList' (Maybe Text)
olUserIP = lens _olUserIP (\ s a -> s{_olUserIP = a})

-- | Name of the bucket in which to look for objects.
olBucket :: Lens' ObjectsList' Text
olBucket = lens _olBucket (\ s a -> s{_olBucket = a})

-- | If true, lists all versions of a file as distinct results.
olVersions :: Lens' ObjectsList' (Maybe Bool)
olVersions
  = lens _olVersions (\ s a -> s{_olVersions = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
olKey :: Lens' ObjectsList' (Maybe Key)
olKey = lens _olKey (\ s a -> s{_olKey = a})

-- | Set of properties to return. Defaults to noAcl.
olProjection :: Lens' ObjectsList' (Maybe StorageObjectsListProjection)
olProjection
  = lens _olProjection (\ s a -> s{_olProjection = a})

-- | A previously-returned page token representing part of the larger set of
-- results to view.
olPageToken :: Lens' ObjectsList' (Maybe Text)
olPageToken
  = lens _olPageToken (\ s a -> s{_olPageToken = a})

-- | OAuth 2.0 token for the current user.
olOAuthToken :: Lens' ObjectsList' (Maybe OAuthToken)
olOAuthToken
  = lens _olOAuthToken (\ s a -> s{_olOAuthToken = a})

-- | Returns results in a directory-like mode. items will contain only
-- objects whose names, aside from the prefix, do not contain delimiter.
-- Objects whose names, aside from the prefix, contain delimiter will have
-- their name, truncated after the delimiter, returned in prefixes.
-- Duplicate prefixes are omitted.
olDelimiter :: Lens' ObjectsList' (Maybe Text)
olDelimiter
  = lens _olDelimiter (\ s a -> s{_olDelimiter = a})

-- | Maximum number of items plus prefixes to return. As duplicate prefixes
-- are omitted, fewer total results may be returned than requested.
olMaxResults :: Lens' ObjectsList' (Maybe Word32)
olMaxResults
  = lens _olMaxResults (\ s a -> s{_olMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
olFields :: Lens' ObjectsList' (Maybe Text)
olFields = lens _olFields (\ s a -> s{_olFields = a})

instance GoogleAuth ObjectsList' where
        authKey = olKey . _Just
        authToken = olOAuthToken . _Just

instance GoogleRequest ObjectsList' where
        type Rs ObjectsList' = Objects
        request = requestWithRoute defReq storageURL
        requestWithRoute r u ObjectsList'{..}
          = go _olQuotaUser (Just _olPrettyPrint) _olPrefix
              _olUserIP
              _olBucket
              _olVersions
              _olKey
              _olProjection
              _olPageToken
              _olOAuthToken
              _olDelimiter
              _olMaxResults
              _olFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ObjectsListResource)
                      r
                      u
