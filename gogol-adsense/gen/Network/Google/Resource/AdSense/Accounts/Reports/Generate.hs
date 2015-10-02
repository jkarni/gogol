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
-- Module      : Network.Google.Resource.AdSense.Accounts.Reports.Generate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Generate an AdSense report based on the report request sent in the query
-- parameters. Returns the result as JSON; to retrieve output in CSV format
-- specify \"alt=csv\" as a query parameter.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAccountsReportsGenerate@.
module Network.Google.Resource.AdSense.Accounts.Reports.Generate
    (
    -- * REST Resource
      AccountsReportsGenerateResource

    -- * Creating a Request
    , accountsReportsGenerate'
    , AccountsReportsGenerate'

    -- * Request Lenses
    , argQuotaUser
    , argPrettyPrint
    , argUserIP
    , argDimension
    , argLocale
    , argEndDate
    , argStartDate
    , argAccountId
    , argMetric
    , argKey
    , argCurrency
    , argSort
    , argFilter
    , argOAuthToken
    , argStartIndex
    , argUseTimezoneReporting
    , argMaxResults
    , argFields
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAccountsReportsGenerate@ which the
-- 'AccountsReportsGenerate'' request conforms to.
type AccountsReportsGenerateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "reports" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParams "dimension" Text :>
                   QueryParam "locale" Text :>
                     QueryParam "endDate" Text :>
                       QueryParam "startDate" Text :>
                         QueryParams "metric" Text :>
                           QueryParam "key" Key :>
                             QueryParam "currency" Text :>
                               QueryParams "sort" Text :>
                                 QueryParams "filter" Text :>
                                   QueryParam "oauth_token" OAuthToken :>
                                     QueryParam "startIndex" Int32 :>
                                       QueryParam "useTimezoneReporting" Bool :>
                                         QueryParam "maxResults" Int32 :>
                                           QueryParam "fields" Text :>
                                             QueryParam "alt" AltJSON :>
                                               Get '[JSON]
                                                 AdsenseReportsGenerateResponse
       :<|>
       "accounts" :>
         Capture "accountId" Text :>
           "reports" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParams "dimension" Text :>
                     QueryParam "locale" Text :>
                       QueryParam "endDate" Text :>
                         QueryParam "startDate" Text :>
                           QueryParams "metric" Text :>
                             QueryParam "key" Key :>
                               QueryParam "currency" Text :>
                                 QueryParams "sort" Text :>
                                   QueryParams "filter" Text :>
                                     QueryParam "oauth_token" OAuthToken :>
                                       QueryParam "startIndex" Int32 :>
                                         QueryParam "useTimezoneReporting" Bool
                                           :>
                                           QueryParam "maxResults" Int32 :>
                                             QueryParam "fields" Text :>
                                               QueryParam "alt" Media :>
                                                 Get '[OctetStream] Stream

-- | Generate an AdSense report based on the report request sent in the query
-- parameters. Returns the result as JSON; to retrieve output in CSV format
-- specify \"alt=csv\" as a query parameter.
--
-- /See:/ 'accountsReportsGenerate'' smart constructor.
data AccountsReportsGenerate' = AccountsReportsGenerate'
    { _argQuotaUser            :: !(Maybe Text)
    , _argPrettyPrint          :: !Bool
    , _argUserIP               :: !(Maybe Text)
    , _argDimension            :: !(Maybe Text)
    , _argLocale               :: !(Maybe Text)
    , _argEndDate              :: !Text
    , _argStartDate            :: !Text
    , _argAccountId            :: !Text
    , _argMetric               :: !(Maybe Text)
    , _argKey                  :: !(Maybe Key)
    , _argCurrency             :: !(Maybe Text)
    , _argSort                 :: !(Maybe Text)
    , _argFilter               :: !(Maybe Text)
    , _argOAuthToken           :: !(Maybe OAuthToken)
    , _argStartIndex           :: !(Maybe Int32)
    , _argUseTimezoneReporting :: !(Maybe Bool)
    , _argMaxResults           :: !(Maybe Int32)
    , _argFields               :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsReportsGenerate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'argQuotaUser'
--
-- * 'argPrettyPrint'
--
-- * 'argUserIP'
--
-- * 'argDimension'
--
-- * 'argLocale'
--
-- * 'argEndDate'
--
-- * 'argStartDate'
--
-- * 'argAccountId'
--
-- * 'argMetric'
--
-- * 'argKey'
--
-- * 'argCurrency'
--
-- * 'argSort'
--
-- * 'argFilter'
--
-- * 'argOAuthToken'
--
-- * 'argStartIndex'
--
-- * 'argUseTimezoneReporting'
--
-- * 'argMaxResults'
--
-- * 'argFields'
accountsReportsGenerate'
    :: Text -- ^ 'endDate'
    -> Text -- ^ 'startDate'
    -> Text -- ^ 'accountId'
    -> AccountsReportsGenerate'
accountsReportsGenerate' pArgEndDate_ pArgStartDate_ pArgAccountId_ =
    AccountsReportsGenerate'
    { _argQuotaUser = Nothing
    , _argPrettyPrint = True
    , _argUserIP = Nothing
    , _argDimension = Nothing
    , _argLocale = Nothing
    , _argEndDate = pArgEndDate_
    , _argStartDate = pArgStartDate_
    , _argAccountId = pArgAccountId_
    , _argMetric = Nothing
    , _argKey = Nothing
    , _argCurrency = Nothing
    , _argSort = Nothing
    , _argFilter = Nothing
    , _argOAuthToken = Nothing
    , _argStartIndex = Nothing
    , _argUseTimezoneReporting = Nothing
    , _argMaxResults = Nothing
    , _argFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
argQuotaUser :: Lens' AccountsReportsGenerate' (Maybe Text)
argQuotaUser
  = lens _argQuotaUser (\ s a -> s{_argQuotaUser = a})

-- | Returns response with indentations and line breaks.
argPrettyPrint :: Lens' AccountsReportsGenerate' Bool
argPrettyPrint
  = lens _argPrettyPrint
      (\ s a -> s{_argPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
argUserIP :: Lens' AccountsReportsGenerate' (Maybe Text)
argUserIP
  = lens _argUserIP (\ s a -> s{_argUserIP = a})

-- | Dimensions to base the report on.
argDimension :: Lens' AccountsReportsGenerate' (Maybe Text)
argDimension
  = lens _argDimension (\ s a -> s{_argDimension = a})

-- | Optional locale to use for translating report output to a local
-- language. Defaults to \"en_US\" if not specified.
argLocale :: Lens' AccountsReportsGenerate' (Maybe Text)
argLocale
  = lens _argLocale (\ s a -> s{_argLocale = a})

-- | End of the date range to report on in \"YYYY-MM-DD\" format, inclusive.
argEndDate :: Lens' AccountsReportsGenerate' Text
argEndDate
  = lens _argEndDate (\ s a -> s{_argEndDate = a})

-- | Start of the date range to report on in \"YYYY-MM-DD\" format,
-- inclusive.
argStartDate :: Lens' AccountsReportsGenerate' Text
argStartDate
  = lens _argStartDate (\ s a -> s{_argStartDate = a})

-- | Account upon which to report.
argAccountId :: Lens' AccountsReportsGenerate' Text
argAccountId
  = lens _argAccountId (\ s a -> s{_argAccountId = a})

-- | Numeric columns to include in the report.
argMetric :: Lens' AccountsReportsGenerate' (Maybe Text)
argMetric
  = lens _argMetric (\ s a -> s{_argMetric = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
argKey :: Lens' AccountsReportsGenerate' (Maybe Key)
argKey = lens _argKey (\ s a -> s{_argKey = a})

-- | Optional currency to use when reporting on monetary metrics. Defaults to
-- the account\'s currency if not set.
argCurrency :: Lens' AccountsReportsGenerate' (Maybe Text)
argCurrency
  = lens _argCurrency (\ s a -> s{_argCurrency = a})

-- | The name of a dimension or metric to sort the resulting report on,
-- optionally prefixed with \"+\" to sort ascending or \"-\" to sort
-- descending. If no prefix is specified, the column is sorted ascending.
argSort :: Lens' AccountsReportsGenerate' (Maybe Text)
argSort = lens _argSort (\ s a -> s{_argSort = a})

-- | Filters to be run on the report.
argFilter :: Lens' AccountsReportsGenerate' (Maybe Text)
argFilter
  = lens _argFilter (\ s a -> s{_argFilter = a})

-- | OAuth 2.0 token for the current user.
argOAuthToken :: Lens' AccountsReportsGenerate' (Maybe OAuthToken)
argOAuthToken
  = lens _argOAuthToken
      (\ s a -> s{_argOAuthToken = a})

-- | Index of the first row of report data to return.
argStartIndex :: Lens' AccountsReportsGenerate' (Maybe Int32)
argStartIndex
  = lens _argStartIndex
      (\ s a -> s{_argStartIndex = a})

-- | Whether the report should be generated in the AdSense account\'s local
-- timezone. If false default PST\/PDT timezone will be used.
argUseTimezoneReporting :: Lens' AccountsReportsGenerate' (Maybe Bool)
argUseTimezoneReporting
  = lens _argUseTimezoneReporting
      (\ s a -> s{_argUseTimezoneReporting = a})

-- | The maximum number of rows of report data to return.
argMaxResults :: Lens' AccountsReportsGenerate' (Maybe Int32)
argMaxResults
  = lens _argMaxResults
      (\ s a -> s{_argMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
argFields :: Lens' AccountsReportsGenerate' (Maybe Text)
argFields
  = lens _argFields (\ s a -> s{_argFields = a})

instance GoogleAuth AccountsReportsGenerate' where
        authKey = argKey . _Just
        authToken = argOAuthToken . _Just

instance GoogleRequest AccountsReportsGenerate' where
        type Rs AccountsReportsGenerate' =
             AdsenseReportsGenerateResponse
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u AccountsReportsGenerate'{..}
          = go _argQuotaUser (Just _argPrettyPrint) _argUserIP
              _argDimension
              _argLocale
              (Just _argEndDate)
              (Just _argStartDate)
              _argAccountId
              _argMetric
              _argKey
              _argCurrency
              _argSort
              _argFilter
              _argOAuthToken
              _argStartIndex
              _argUseTimezoneReporting
              _argMaxResults
              _argFields
              (Just AltJSON)
          where go :<|> _
                  = clientWithRoute
                      (Proxy :: Proxy AccountsReportsGenerateResource)
                      r
                      u

instance GoogleRequest AccountsReportsGenerate' where
        type Rs (Download AccountsReportsGenerate') = Stream
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u AccountsReportsGenerate'{..}
          = go _argQuotaUser (Just _argPrettyPrint) _argUserIP
              _argDimension
              _argLocale
              (Just _argEndDate)
              (Just _argStartDate)
              _argAccountId
              _argMetric
              _argKey
              _argCurrency
              _argSort
              _argFilter
              _argOAuthToken
              _argStartIndex
              _argUseTimezoneReporting
              _argMaxResults
              _argFields
              (Just Media)
          where go :<|> _
                  = clientWithRoute
                      (Proxy :: Proxy AccountsReportsGenerateResource)
                      r
                      u
