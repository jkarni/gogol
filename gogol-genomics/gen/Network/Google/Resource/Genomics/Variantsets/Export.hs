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
-- Module      : Network.Google.Resource.Genomics.Variantsets.Export
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Exports variant set data to an external destination.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsVariantsetsExport@.
module Network.Google.Resource.Genomics.Variantsets.Export
    (
    -- * REST Resource
      VariantsetsExportResource

    -- * Creating a Request
    , variantsetsExport'
    , VariantsetsExport'

    -- * Request Lenses
    , veQuotaUser
    , vePrettyPrint
    , veVariantSetId
    , veUserIP
    , veKey
    , veExportVariantSetRequest
    , veOAuthToken
    , veFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsetsExport@ which the
-- 'VariantsetsExport'' request conforms to.
type VariantsetsExportResource =
     "variantsets" :>
       Capture "variantSetId" Text :>
         "export" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ExportVariantSetRequest :>
                           Post '[JSON] ExportVariantSetResponse

-- | Exports variant set data to an external destination.
--
-- /See:/ 'variantsetsExport'' smart constructor.
data VariantsetsExport' = VariantsetsExport'
    { _veQuotaUser               :: !(Maybe Text)
    , _vePrettyPrint             :: !Bool
    , _veVariantSetId            :: !Text
    , _veUserIP                  :: !(Maybe Text)
    , _veKey                     :: !(Maybe Key)
    , _veExportVariantSetRequest :: !ExportVariantSetRequest
    , _veOAuthToken              :: !(Maybe OAuthToken)
    , _veFields                  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsExport'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'veQuotaUser'
--
-- * 'vePrettyPrint'
--
-- * 'veVariantSetId'
--
-- * 'veUserIP'
--
-- * 'veKey'
--
-- * 'veExportVariantSetRequest'
--
-- * 'veOAuthToken'
--
-- * 'veFields'
variantsetsExport'
    :: Text -- ^ 'variantSetId'
    -> ExportVariantSetRequest -- ^ 'ExportVariantSetRequest'
    -> VariantsetsExport'
variantsetsExport' pVeVariantSetId_ pVeExportVariantSetRequest_ =
    VariantsetsExport'
    { _veQuotaUser = Nothing
    , _vePrettyPrint = True
    , _veVariantSetId = pVeVariantSetId_
    , _veUserIP = Nothing
    , _veKey = Nothing
    , _veExportVariantSetRequest = pVeExportVariantSetRequest_
    , _veOAuthToken = Nothing
    , _veFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
veQuotaUser :: Lens' VariantsetsExport' (Maybe Text)
veQuotaUser
  = lens _veQuotaUser (\ s a -> s{_veQuotaUser = a})

-- | Returns response with indentations and line breaks.
vePrettyPrint :: Lens' VariantsetsExport' Bool
vePrettyPrint
  = lens _vePrettyPrint
      (\ s a -> s{_vePrettyPrint = a})

-- | Required. The ID of the variant set that contains variant data which
-- should be exported. The caller must have READ access to this variant
-- set.
veVariantSetId :: Lens' VariantsetsExport' Text
veVariantSetId
  = lens _veVariantSetId
      (\ s a -> s{_veVariantSetId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
veUserIP :: Lens' VariantsetsExport' (Maybe Text)
veUserIP = lens _veUserIP (\ s a -> s{_veUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
veKey :: Lens' VariantsetsExport' (Maybe Key)
veKey = lens _veKey (\ s a -> s{_veKey = a})

-- | Multipart request metadata.
veExportVariantSetRequest :: Lens' VariantsetsExport' ExportVariantSetRequest
veExportVariantSetRequest
  = lens _veExportVariantSetRequest
      (\ s a -> s{_veExportVariantSetRequest = a})

-- | OAuth 2.0 token for the current user.
veOAuthToken :: Lens' VariantsetsExport' (Maybe OAuthToken)
veOAuthToken
  = lens _veOAuthToken (\ s a -> s{_veOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
veFields :: Lens' VariantsetsExport' (Maybe Text)
veFields = lens _veFields (\ s a -> s{_veFields = a})

instance GoogleAuth VariantsetsExport' where
        authKey = veKey . _Just
        authToken = veOAuthToken . _Just

instance GoogleRequest VariantsetsExport' where
        type Rs VariantsetsExport' = ExportVariantSetResponse
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsetsExport'{..}
          = go _veQuotaUser (Just _vePrettyPrint)
              _veVariantSetId
              _veUserIP
              _veKey
              _veOAuthToken
              _veFields
              (Just AltJSON)
              _veExportVariantSetRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VariantsetsExportResource)
                      r
                      u
