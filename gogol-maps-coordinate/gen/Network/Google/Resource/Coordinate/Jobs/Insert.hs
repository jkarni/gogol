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
-- Module      : Network.Google.Resource.Coordinate.Jobs.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new job. Only the state field of the job should be set.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference> for @CoordinateJobsInsert@.
module Network.Google.Resource.Coordinate.Jobs.Insert
    (
    -- * REST Resource
      JobsInsertResource

    -- * Creating a Request
    , jobsInsert'
    , JobsInsert'

    -- * Request Lenses
    , jiQuotaUser
    , jiPrettyPrint
    , jiNote
    , jiUserIP
    , jiTeamId
    , jiCustomerPhoneNumber
    , jiCustomerName
    , jiAddress
    , jiAssignee
    , jiLat
    , jiKey
    , jiJob
    , jiLng
    , jiTitle
    , jiOAuthToken
    , jiFields
    , jiCustomField
    ) where

import           Network.Google.MapsCoordinate.Types
import           Network.Google.Prelude

-- | A resource alias for @CoordinateJobsInsert@ which the
-- 'JobsInsert'' request conforms to.
type JobsInsertResource =
     "teams" :>
       Capture "teamId" Text :>
         "jobs" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "note" Text :>
                 QueryParam "userIp" Text :>
                   QueryParam "customerPhoneNumber" Text :>
                     QueryParam "customerName" Text :>
                       QueryParam "address" Text :>
                         QueryParam "assignee" Text :>
                           QueryParam "lat" Double :>
                             QueryParam "key" Key :>
                               QueryParam "lng" Double :>
                                 QueryParam "title" Text :>
                                   QueryParam "oauth_token" OAuthToken :>
                                     QueryParam "fields" Text :>
                                       QueryParams "customField" Text :>
                                         QueryParam "alt" AltJSON :>
                                           ReqBody '[JSON] Job :>
                                             Post '[JSON] Job

-- | Inserts a new job. Only the state field of the job should be set.
--
-- /See:/ 'jobsInsert'' smart constructor.
data JobsInsert' = JobsInsert'
    { _jiQuotaUser           :: !(Maybe Text)
    , _jiPrettyPrint         :: !Bool
    , _jiNote                :: !(Maybe Text)
    , _jiUserIP              :: !(Maybe Text)
    , _jiTeamId              :: !Text
    , _jiCustomerPhoneNumber :: !(Maybe Text)
    , _jiCustomerName        :: !(Maybe Text)
    , _jiAddress             :: !Text
    , _jiAssignee            :: !(Maybe Text)
    , _jiLat                 :: !Double
    , _jiKey                 :: !(Maybe Key)
    , _jiJob                 :: !Job
    , _jiLng                 :: !Double
    , _jiTitle               :: !Text
    , _jiOAuthToken          :: !(Maybe OAuthToken)
    , _jiFields              :: !(Maybe Text)
    , _jiCustomField         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jiQuotaUser'
--
-- * 'jiPrettyPrint'
--
-- * 'jiNote'
--
-- * 'jiUserIP'
--
-- * 'jiTeamId'
--
-- * 'jiCustomerPhoneNumber'
--
-- * 'jiCustomerName'
--
-- * 'jiAddress'
--
-- * 'jiAssignee'
--
-- * 'jiLat'
--
-- * 'jiKey'
--
-- * 'jiJob'
--
-- * 'jiLng'
--
-- * 'jiTitle'
--
-- * 'jiOAuthToken'
--
-- * 'jiFields'
--
-- * 'jiCustomField'
jobsInsert'
    :: Text -- ^ 'teamId'
    -> Text -- ^ 'address'
    -> Double -- ^ 'lat'
    -> Job -- ^ 'Job'
    -> Double -- ^ 'lng'
    -> Text -- ^ 'title'
    -> JobsInsert'
jobsInsert' pJiTeamId_ pJiAddress_ pJiLat_ pJiJob_ pJiLng_ pJiTitle_ =
    JobsInsert'
    { _jiQuotaUser = Nothing
    , _jiPrettyPrint = True
    , _jiNote = Nothing
    , _jiUserIP = Nothing
    , _jiTeamId = pJiTeamId_
    , _jiCustomerPhoneNumber = Nothing
    , _jiCustomerName = Nothing
    , _jiAddress = pJiAddress_
    , _jiAssignee = Nothing
    , _jiLat = pJiLat_
    , _jiKey = Nothing
    , _jiJob = pJiJob_
    , _jiLng = pJiLng_
    , _jiTitle = pJiTitle_
    , _jiOAuthToken = Nothing
    , _jiFields = Nothing
    , _jiCustomField = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
jiQuotaUser :: Lens' JobsInsert' (Maybe Text)
jiQuotaUser
  = lens _jiQuotaUser (\ s a -> s{_jiQuotaUser = a})

-- | Returns response with indentations and line breaks.
jiPrettyPrint :: Lens' JobsInsert' Bool
jiPrettyPrint
  = lens _jiPrettyPrint
      (\ s a -> s{_jiPrettyPrint = a})

-- | Job note as newline (Unix) separated string
jiNote :: Lens' JobsInsert' (Maybe Text)
jiNote = lens _jiNote (\ s a -> s{_jiNote = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
jiUserIP :: Lens' JobsInsert' (Maybe Text)
jiUserIP = lens _jiUserIP (\ s a -> s{_jiUserIP = a})

-- | Team ID
jiTeamId :: Lens' JobsInsert' Text
jiTeamId = lens _jiTeamId (\ s a -> s{_jiTeamId = a})

-- | Customer phone number
jiCustomerPhoneNumber :: Lens' JobsInsert' (Maybe Text)
jiCustomerPhoneNumber
  = lens _jiCustomerPhoneNumber
      (\ s a -> s{_jiCustomerPhoneNumber = a})

-- | Customer name
jiCustomerName :: Lens' JobsInsert' (Maybe Text)
jiCustomerName
  = lens _jiCustomerName
      (\ s a -> s{_jiCustomerName = a})

-- | Job address as newline (Unix) separated string
jiAddress :: Lens' JobsInsert' Text
jiAddress
  = lens _jiAddress (\ s a -> s{_jiAddress = a})

-- | Assignee email address, or empty string to unassign.
jiAssignee :: Lens' JobsInsert' (Maybe Text)
jiAssignee
  = lens _jiAssignee (\ s a -> s{_jiAssignee = a})

-- | The latitude coordinate of this job\'s location.
jiLat :: Lens' JobsInsert' Double
jiLat = lens _jiLat (\ s a -> s{_jiLat = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
jiKey :: Lens' JobsInsert' (Maybe Key)
jiKey = lens _jiKey (\ s a -> s{_jiKey = a})

-- | Multipart request metadata.
jiJob :: Lens' JobsInsert' Job
jiJob = lens _jiJob (\ s a -> s{_jiJob = a})

-- | The longitude coordinate of this job\'s location.
jiLng :: Lens' JobsInsert' Double
jiLng = lens _jiLng (\ s a -> s{_jiLng = a})

-- | Job title
jiTitle :: Lens' JobsInsert' Text
jiTitle = lens _jiTitle (\ s a -> s{_jiTitle = a})

-- | OAuth 2.0 token for the current user.
jiOAuthToken :: Lens' JobsInsert' (Maybe OAuthToken)
jiOAuthToken
  = lens _jiOAuthToken (\ s a -> s{_jiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
jiFields :: Lens' JobsInsert' (Maybe Text)
jiFields = lens _jiFields (\ s a -> s{_jiFields = a})

-- | Sets the value of custom fields. To set a custom field, pass the field
-- id (from \/team\/teamId\/custom_fields), a URL escaped \'=\' character,
-- and the desired value as a parameter. For example,
-- customField=12%3DAlice. Repeat the parameter for each custom field. Note
-- that \'=\' cannot appear in the parameter value. Specifying an invalid,
-- or inactive enum field will result in an error 500.
jiCustomField :: Lens' JobsInsert' (Maybe Text)
jiCustomField
  = lens _jiCustomField
      (\ s a -> s{_jiCustomField = a})

instance GoogleAuth JobsInsert' where
        authKey = jiKey . _Just
        authToken = jiOAuthToken . _Just

instance GoogleRequest JobsInsert' where
        type Rs JobsInsert' = Job
        request = requestWithRoute defReq mapsCoordinateURL
        requestWithRoute r u JobsInsert'{..}
          = go _jiQuotaUser (Just _jiPrettyPrint) _jiNote
              _jiUserIP
              _jiTeamId
              _jiCustomerPhoneNumber
              _jiCustomerName
              (Just _jiAddress)
              _jiAssignee
              (Just _jiLat)
              _jiKey
              (Just _jiLng)
              (Just _jiTitle)
              _jiOAuthToken
              _jiFields
              _jiCustomField
              (Just AltJSON)
              _jiJob
          where go
                  = clientWithRoute (Proxy :: Proxy JobsInsertResource)
                      r
                      u
