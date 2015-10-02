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
-- Module      : Network.Google.Resource.Books.MyConfig.RequestAccess
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Request concurrent and download access restrictions.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyConfigRequestAccess@.
module Network.Google.Resource.Books.MyConfig.RequestAccess
    (
    -- * REST Resource
      MyConfigRequestAccessResource

    -- * Creating a Request
    , myConfigRequestAccess'
    , MyConfigRequestAccess'

    -- * Request Lenses
    , mcraQuotaUser
    , mcraPrettyPrint
    , mcraCpksver
    , mcraUserIP
    , mcraLocale
    , mcraLicenseTypes
    , mcraKey
    , mcraVolumeId
    , mcraSource
    , mcraOAuthToken
    , mcraFields
    , mcraNonce
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyConfigRequestAccess@ which the
-- 'MyConfigRequestAccess'' request conforms to.
type MyConfigRequestAccessResource =
     "myconfig" :>
       "requestAccess" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "cpksver" Text :>
               QueryParam "userIp" Text :>
                 QueryParam "locale" Text :>
                   QueryParam "licenseTypes"
                     BooksMyConfigRequestAccessLicenseTypes
                     :>
                     QueryParam "key" Key :>
                       QueryParam "volumeId" Text :>
                         QueryParam "source" Text :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "fields" Text :>
                               QueryParam "nonce" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Post '[JSON] RequestAccess

-- | Request concurrent and download access restrictions.
--
-- /See:/ 'myConfigRequestAccess'' smart constructor.
data MyConfigRequestAccess' = MyConfigRequestAccess'
    { _mcraQuotaUser    :: !(Maybe Text)
    , _mcraPrettyPrint  :: !Bool
    , _mcraCpksver      :: !Text
    , _mcraUserIP       :: !(Maybe Text)
    , _mcraLocale       :: !(Maybe Text)
    , _mcraLicenseTypes :: !(Maybe BooksMyConfigRequestAccessLicenseTypes)
    , _mcraKey          :: !(Maybe Key)
    , _mcraVolumeId     :: !Text
    , _mcraSource       :: !Text
    , _mcraOAuthToken   :: !(Maybe OAuthToken)
    , _mcraFields       :: !(Maybe Text)
    , _mcraNonce        :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyConfigRequestAccess'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcraQuotaUser'
--
-- * 'mcraPrettyPrint'
--
-- * 'mcraCpksver'
--
-- * 'mcraUserIP'
--
-- * 'mcraLocale'
--
-- * 'mcraLicenseTypes'
--
-- * 'mcraKey'
--
-- * 'mcraVolumeId'
--
-- * 'mcraSource'
--
-- * 'mcraOAuthToken'
--
-- * 'mcraFields'
--
-- * 'mcraNonce'
myConfigRequestAccess'
    :: Text -- ^ 'cpksver'
    -> Text -- ^ 'volumeId'
    -> Text -- ^ 'source'
    -> Text -- ^ 'nonce'
    -> MyConfigRequestAccess'
myConfigRequestAccess' pMcraCpksver_ pMcraVolumeId_ pMcraSource_ pMcraNonce_ =
    MyConfigRequestAccess'
    { _mcraQuotaUser = Nothing
    , _mcraPrettyPrint = True
    , _mcraCpksver = pMcraCpksver_
    , _mcraUserIP = Nothing
    , _mcraLocale = Nothing
    , _mcraLicenseTypes = Nothing
    , _mcraKey = Nothing
    , _mcraVolumeId = pMcraVolumeId_
    , _mcraSource = pMcraSource_
    , _mcraOAuthToken = Nothing
    , _mcraFields = Nothing
    , _mcraNonce = pMcraNonce_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mcraQuotaUser :: Lens' MyConfigRequestAccess' (Maybe Text)
mcraQuotaUser
  = lens _mcraQuotaUser
      (\ s a -> s{_mcraQuotaUser = a})

-- | Returns response with indentations and line breaks.
mcraPrettyPrint :: Lens' MyConfigRequestAccess' Bool
mcraPrettyPrint
  = lens _mcraPrettyPrint
      (\ s a -> s{_mcraPrettyPrint = a})

-- | The device\/version ID from which to request the restrictions.
mcraCpksver :: Lens' MyConfigRequestAccess' Text
mcraCpksver
  = lens _mcraCpksver (\ s a -> s{_mcraCpksver = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mcraUserIP :: Lens' MyConfigRequestAccess' (Maybe Text)
mcraUserIP
  = lens _mcraUserIP (\ s a -> s{_mcraUserIP = a})

-- | ISO-639-1, ISO-3166-1 codes for message localization, i.e. en_US.
mcraLocale :: Lens' MyConfigRequestAccess' (Maybe Text)
mcraLocale
  = lens _mcraLocale (\ s a -> s{_mcraLocale = a})

-- | The type of access license to request. If not specified, the default is
-- BOTH.
mcraLicenseTypes :: Lens' MyConfigRequestAccess' (Maybe BooksMyConfigRequestAccessLicenseTypes)
mcraLicenseTypes
  = lens _mcraLicenseTypes
      (\ s a -> s{_mcraLicenseTypes = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mcraKey :: Lens' MyConfigRequestAccess' (Maybe Key)
mcraKey = lens _mcraKey (\ s a -> s{_mcraKey = a})

-- | The volume to request concurrent\/download restrictions for.
mcraVolumeId :: Lens' MyConfigRequestAccess' Text
mcraVolumeId
  = lens _mcraVolumeId (\ s a -> s{_mcraVolumeId = a})

-- | String to identify the originator of this request.
mcraSource :: Lens' MyConfigRequestAccess' Text
mcraSource
  = lens _mcraSource (\ s a -> s{_mcraSource = a})

-- | OAuth 2.0 token for the current user.
mcraOAuthToken :: Lens' MyConfigRequestAccess' (Maybe OAuthToken)
mcraOAuthToken
  = lens _mcraOAuthToken
      (\ s a -> s{_mcraOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mcraFields :: Lens' MyConfigRequestAccess' (Maybe Text)
mcraFields
  = lens _mcraFields (\ s a -> s{_mcraFields = a})

-- | The client nonce value.
mcraNonce :: Lens' MyConfigRequestAccess' Text
mcraNonce
  = lens _mcraNonce (\ s a -> s{_mcraNonce = a})

instance GoogleAuth MyConfigRequestAccess' where
        authKey = mcraKey . _Just
        authToken = mcraOAuthToken . _Just

instance GoogleRequest MyConfigRequestAccess' where
        type Rs MyConfigRequestAccess' = RequestAccess
        request = requestWithRoute defReq booksURL
        requestWithRoute r u MyConfigRequestAccess'{..}
          = go _mcraQuotaUser (Just _mcraPrettyPrint)
              (Just _mcraCpksver)
              _mcraUserIP
              _mcraLocale
              _mcraLicenseTypes
              _mcraKey
              (Just _mcraVolumeId)
              (Just _mcraSource)
              _mcraOAuthToken
              _mcraFields
              (Just _mcraNonce)
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MyConfigRequestAccessResource)
                      r
                      u
