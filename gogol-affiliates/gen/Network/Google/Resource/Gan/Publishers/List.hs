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
-- Module      : Network.Google.Resource.Gan.Publishers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves data about all publishers that the requesting
-- advertiser\/publisher has access to.
--
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference> for @GanPublishersList@.
module Network.Google.Resource.Gan.Publishers.List
    (
    -- * REST Resource
      PublishersListResource

    -- * Creating a Request
    , publishersList'
    , PublishersList'

    -- * Request Lenses
    , plQuotaUser
    , plPrettyPrint
    , plUserIP
    , plRelationshipStatus
    , plMinSevenDayEpc
    , plRoleId
    , plMinNinetyDayEpc
    , plRole
    , plKey
    , plMinPayoutRank
    , plPageToken
    , plOAuthToken
    , plPublisherCategory
    , plMaxResults
    , plFields
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude

-- | A resource alias for @GanPublishersList@ which the
-- 'PublishersList'' request conforms to.
type PublishersListResource =
     Capture "role" GanPublishersListRole :>
       Capture "roleId" Text :>
         "publishers" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "relationshipStatus"
                   GanPublishersListRelationshipStatus
                   :>
                   QueryParam "minSevenDayEpc" Double :>
                     QueryParam "minNinetyDayEpc" Double :>
                       QueryParam "key" Key :>
                         QueryParam "minPayoutRank" Int32 :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "publisherCategory" Text :>
                                 QueryParam "maxResults" Word32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] Publishers

-- | Retrieves data about all publishers that the requesting
-- advertiser\/publisher has access to.
--
-- /See:/ 'publishersList'' smart constructor.
data PublishersList' = PublishersList'
    { _plQuotaUser          :: !(Maybe Text)
    , _plPrettyPrint        :: !Bool
    , _plUserIP             :: !(Maybe Text)
    , _plRelationshipStatus :: !(Maybe GanPublishersListRelationshipStatus)
    , _plMinSevenDayEpc     :: !(Maybe Double)
    , _plRoleId             :: !Text
    , _plMinNinetyDayEpc    :: !(Maybe Double)
    , _plRole               :: !GanPublishersListRole
    , _plKey                :: !(Maybe Key)
    , _plMinPayoutRank      :: !(Maybe Int32)
    , _plPageToken          :: !(Maybe Text)
    , _plOAuthToken         :: !(Maybe OAuthToken)
    , _plPublisherCategory  :: !(Maybe Text)
    , _plMaxResults         :: !(Maybe Word32)
    , _plFields             :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PublishersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plQuotaUser'
--
-- * 'plPrettyPrint'
--
-- * 'plUserIP'
--
-- * 'plRelationshipStatus'
--
-- * 'plMinSevenDayEpc'
--
-- * 'plRoleId'
--
-- * 'plMinNinetyDayEpc'
--
-- * 'plRole'
--
-- * 'plKey'
--
-- * 'plMinPayoutRank'
--
-- * 'plPageToken'
--
-- * 'plOAuthToken'
--
-- * 'plPublisherCategory'
--
-- * 'plMaxResults'
--
-- * 'plFields'
publishersList'
    :: Text -- ^ 'roleId'
    -> GanPublishersListRole -- ^ 'role'
    -> PublishersList'
publishersList' pPlRoleId_ pPlRole_ =
    PublishersList'
    { _plQuotaUser = Nothing
    , _plPrettyPrint = True
    , _plUserIP = Nothing
    , _plRelationshipStatus = Nothing
    , _plMinSevenDayEpc = Nothing
    , _plRoleId = pPlRoleId_
    , _plMinNinetyDayEpc = Nothing
    , _plRole = pPlRole_
    , _plKey = Nothing
    , _plMinPayoutRank = Nothing
    , _plPageToken = Nothing
    , _plOAuthToken = Nothing
    , _plPublisherCategory = Nothing
    , _plMaxResults = Nothing
    , _plFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
plQuotaUser :: Lens' PublishersList' (Maybe Text)
plQuotaUser
  = lens _plQuotaUser (\ s a -> s{_plQuotaUser = a})

-- | Returns response with indentations and line breaks.
plPrettyPrint :: Lens' PublishersList' Bool
plPrettyPrint
  = lens _plPrettyPrint
      (\ s a -> s{_plPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
plUserIP :: Lens' PublishersList' (Maybe Text)
plUserIP = lens _plUserIP (\ s a -> s{_plUserIP = a})

-- | Filters out all publishers for which do not have the given relationship
-- status with the requesting publisher.
plRelationshipStatus :: Lens' PublishersList' (Maybe GanPublishersListRelationshipStatus)
plRelationshipStatus
  = lens _plRelationshipStatus
      (\ s a -> s{_plRelationshipStatus = a})

-- | Filters out all publishers that have a seven day EPC average lower than
-- the given value (inclusive). Min value 0.0. Optional.
plMinSevenDayEpc :: Lens' PublishersList' (Maybe Double)
plMinSevenDayEpc
  = lens _plMinSevenDayEpc
      (\ s a -> s{_plMinSevenDayEpc = a})

-- | The ID of the requesting advertiser or publisher.
plRoleId :: Lens' PublishersList' Text
plRoleId = lens _plRoleId (\ s a -> s{_plRoleId = a})

-- | Filters out all publishers that have a ninety day EPC average lower than
-- the given value (inclusive). Min value: 0.0. Optional.
plMinNinetyDayEpc :: Lens' PublishersList' (Maybe Double)
plMinNinetyDayEpc
  = lens _plMinNinetyDayEpc
      (\ s a -> s{_plMinNinetyDayEpc = a})

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
plRole :: Lens' PublishersList' GanPublishersListRole
plRole = lens _plRole (\ s a -> s{_plRole = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plKey :: Lens' PublishersList' (Maybe Key)
plKey = lens _plKey (\ s a -> s{_plKey = a})

-- | A value between 1 and 4, where 1 represents the quartile of publishers
-- with the lowest ranks and 4 represents the quartile of publishers with
-- the highest ranks. Filters out all publishers with a lower rank than the
-- given quartile. For example if a 2 was given only publishers with a
-- payout rank of 25 or higher would be included. Optional.
plMinPayoutRank :: Lens' PublishersList' (Maybe Int32)
plMinPayoutRank
  = lens _plMinPayoutRank
      (\ s a -> s{_plMinPayoutRank = a})

-- | The value of \'nextPageToken\' from the previous page. Optional.
plPageToken :: Lens' PublishersList' (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

-- | OAuth 2.0 token for the current user.
plOAuthToken :: Lens' PublishersList' (Maybe OAuthToken)
plOAuthToken
  = lens _plOAuthToken (\ s a -> s{_plOAuthToken = a})

-- | Caret(^) delimted list of publisher categories. Valid categories:
-- (unclassified|community_and_content|shopping_and_promotion|loyalty_and_rewards|network|search_specialist|comparison_shopping|email).
-- Filters out all publishers not in one of the given advertiser
-- categories. Optional.
plPublisherCategory :: Lens' PublishersList' (Maybe Text)
plPublisherCategory
  = lens _plPublisherCategory
      (\ s a -> s{_plPublisherCategory = a})

-- | Max number of items to return in this page. Optional. Defaults to 20.
plMaxResults :: Lens' PublishersList' (Maybe Word32)
plMaxResults
  = lens _plMaxResults (\ s a -> s{_plMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
plFields :: Lens' PublishersList' (Maybe Text)
plFields = lens _plFields (\ s a -> s{_plFields = a})

instance GoogleAuth PublishersList' where
        authKey = plKey . _Just
        authToken = plOAuthToken . _Just

instance GoogleRequest PublishersList' where
        type Rs PublishersList' = Publishers
        request = requestWithRoute defReq affiliatesURL
        requestWithRoute r u PublishersList'{..}
          = go _plQuotaUser (Just _plPrettyPrint) _plUserIP
              _plRelationshipStatus
              _plMinSevenDayEpc
              _plRoleId
              _plMinNinetyDayEpc
              _plRole
              _plKey
              _plMinPayoutRank
              _plPageToken
              _plOAuthToken
              _plPublisherCategory
              _plMaxResults
              _plFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PublishersListResource)
                      r
                      u
