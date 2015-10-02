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
-- Module      : Network.Google.Resource.BigQuery.Tables.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new, empty table in the dataset.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @BigqueryTablesInsert@.
module Network.Google.Resource.BigQuery.Tables.Insert
    (
    -- * REST Resource
      TablesInsertResource

    -- * Creating a Request
    , tablesInsert'
    , TablesInsert'

    -- * Request Lenses
    , tiQuotaUser
    , tiPrettyPrint
    , tiUserIP
    , tiKey
    , tiDatasetId
    , tiProjectId
    , tiOAuthToken
    , tiTable
    , tiFields
    ) where

import           Network.Google.BigQuery.Types
import           Network.Google.Prelude

-- | A resource alias for @BigqueryTablesInsert@ which the
-- 'TablesInsert'' request conforms to.
type TablesInsertResource =
     "projects" :>
       Capture "projectId" Text :>
         "datasets" :>
           Capture "datasetId" Text :>
             "tables" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Table :> Post '[JSON] Table

-- | Creates a new, empty table in the dataset.
--
-- /See:/ 'tablesInsert'' smart constructor.
data TablesInsert' = TablesInsert'
    { _tiQuotaUser   :: !(Maybe Text)
    , _tiPrettyPrint :: !Bool
    , _tiUserIP      :: !(Maybe Text)
    , _tiKey         :: !(Maybe Key)
    , _tiDatasetId   :: !Text
    , _tiProjectId   :: !Text
    , _tiOAuthToken  :: !(Maybe OAuthToken)
    , _tiTable       :: !Table
    , _tiFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiQuotaUser'
--
-- * 'tiPrettyPrint'
--
-- * 'tiUserIP'
--
-- * 'tiKey'
--
-- * 'tiDatasetId'
--
-- * 'tiProjectId'
--
-- * 'tiOAuthToken'
--
-- * 'tiTable'
--
-- * 'tiFields'
tablesInsert'
    :: Text -- ^ 'datasetId'
    -> Text -- ^ 'projectId'
    -> Table -- ^ 'Table'
    -> TablesInsert'
tablesInsert' pTiDatasetId_ pTiProjectId_ pTiTable_ =
    TablesInsert'
    { _tiQuotaUser = Nothing
    , _tiPrettyPrint = True
    , _tiUserIP = Nothing
    , _tiKey = Nothing
    , _tiDatasetId = pTiDatasetId_
    , _tiProjectId = pTiProjectId_
    , _tiOAuthToken = Nothing
    , _tiTable = pTiTable_
    , _tiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tiQuotaUser :: Lens' TablesInsert' (Maybe Text)
tiQuotaUser
  = lens _tiQuotaUser (\ s a -> s{_tiQuotaUser = a})

-- | Returns response with indentations and line breaks.
tiPrettyPrint :: Lens' TablesInsert' Bool
tiPrettyPrint
  = lens _tiPrettyPrint
      (\ s a -> s{_tiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tiUserIP :: Lens' TablesInsert' (Maybe Text)
tiUserIP = lens _tiUserIP (\ s a -> s{_tiUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tiKey :: Lens' TablesInsert' (Maybe Key)
tiKey = lens _tiKey (\ s a -> s{_tiKey = a})

-- | Dataset ID of the new table
tiDatasetId :: Lens' TablesInsert' Text
tiDatasetId
  = lens _tiDatasetId (\ s a -> s{_tiDatasetId = a})

-- | Project ID of the new table
tiProjectId :: Lens' TablesInsert' Text
tiProjectId
  = lens _tiProjectId (\ s a -> s{_tiProjectId = a})

-- | OAuth 2.0 token for the current user.
tiOAuthToken :: Lens' TablesInsert' (Maybe OAuthToken)
tiOAuthToken
  = lens _tiOAuthToken (\ s a -> s{_tiOAuthToken = a})

-- | Multipart request metadata.
tiTable :: Lens' TablesInsert' Table
tiTable = lens _tiTable (\ s a -> s{_tiTable = a})

-- | Selector specifying which fields to include in a partial response.
tiFields :: Lens' TablesInsert' (Maybe Text)
tiFields = lens _tiFields (\ s a -> s{_tiFields = a})

instance GoogleAuth TablesInsert' where
        authKey = tiKey . _Just
        authToken = tiOAuthToken . _Just

instance GoogleRequest TablesInsert' where
        type Rs TablesInsert' = Table
        request = requestWithRoute defReq bigQueryURL
        requestWithRoute r u TablesInsert'{..}
          = go _tiQuotaUser (Just _tiPrettyPrint) _tiUserIP
              _tiKey
              _tiDatasetId
              _tiProjectId
              _tiOAuthToken
              _tiFields
              (Just AltJSON)
              _tiTable
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TablesInsertResource)
                      r
                      u
