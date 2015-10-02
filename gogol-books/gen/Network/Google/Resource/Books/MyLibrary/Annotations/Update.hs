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
-- Module      : Network.Google.Resource.Books.MyLibrary.Annotations.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing annotation.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyLibraryAnnotationsUpdate@.
module Network.Google.Resource.Books.MyLibrary.Annotations.Update
    (
    -- * REST Resource
      MyLibraryAnnotationsUpdateResource

    -- * Creating a Request
    , myLibraryAnnotationsUpdate'
    , MyLibraryAnnotationsUpdate'

    -- * Request Lenses
    , mlauQuotaUser
    , mlauAnnotation
    , mlauPrettyPrint
    , mlauUserIP
    , mlauKey
    , mlauAnnotationId
    , mlauSource
    , mlauOAuthToken
    , mlauFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyLibraryAnnotationsUpdate@ which the
-- 'MyLibraryAnnotationsUpdate'' request conforms to.
type MyLibraryAnnotationsUpdateResource =
     "mylibrary" :>
       "annotations" :>
         Capture "annotationId" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "source" Text :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Annotation :> Put '[JSON] Annotation

-- | Updates an existing annotation.
--
-- /See:/ 'myLibraryAnnotationsUpdate'' smart constructor.
data MyLibraryAnnotationsUpdate' = MyLibraryAnnotationsUpdate'
    { _mlauQuotaUser    :: !(Maybe Text)
    , _mlauAnnotation   :: !Annotation
    , _mlauPrettyPrint  :: !Bool
    , _mlauUserIP       :: !(Maybe Text)
    , _mlauKey          :: !(Maybe Key)
    , _mlauAnnotationId :: !Text
    , _mlauSource       :: !(Maybe Text)
    , _mlauOAuthToken   :: !(Maybe OAuthToken)
    , _mlauFields       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyLibraryAnnotationsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlauQuotaUser'
--
-- * 'mlauAnnotation'
--
-- * 'mlauPrettyPrint'
--
-- * 'mlauUserIP'
--
-- * 'mlauKey'
--
-- * 'mlauAnnotationId'
--
-- * 'mlauSource'
--
-- * 'mlauOAuthToken'
--
-- * 'mlauFields'
myLibraryAnnotationsUpdate'
    :: Annotation -- ^ 'Annotation'
    -> Text -- ^ 'annotationId'
    -> MyLibraryAnnotationsUpdate'
myLibraryAnnotationsUpdate' pMlauAnnotation_ pMlauAnnotationId_ =
    MyLibraryAnnotationsUpdate'
    { _mlauQuotaUser = Nothing
    , _mlauAnnotation = pMlauAnnotation_
    , _mlauPrettyPrint = True
    , _mlauUserIP = Nothing
    , _mlauKey = Nothing
    , _mlauAnnotationId = pMlauAnnotationId_
    , _mlauSource = Nothing
    , _mlauOAuthToken = Nothing
    , _mlauFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mlauQuotaUser :: Lens' MyLibraryAnnotationsUpdate' (Maybe Text)
mlauQuotaUser
  = lens _mlauQuotaUser
      (\ s a -> s{_mlauQuotaUser = a})

-- | Multipart request metadata.
mlauAnnotation :: Lens' MyLibraryAnnotationsUpdate' Annotation
mlauAnnotation
  = lens _mlauAnnotation
      (\ s a -> s{_mlauAnnotation = a})

-- | Returns response with indentations and line breaks.
mlauPrettyPrint :: Lens' MyLibraryAnnotationsUpdate' Bool
mlauPrettyPrint
  = lens _mlauPrettyPrint
      (\ s a -> s{_mlauPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mlauUserIP :: Lens' MyLibraryAnnotationsUpdate' (Maybe Text)
mlauUserIP
  = lens _mlauUserIP (\ s a -> s{_mlauUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mlauKey :: Lens' MyLibraryAnnotationsUpdate' (Maybe Key)
mlauKey = lens _mlauKey (\ s a -> s{_mlauKey = a})

-- | The ID for the annotation to update.
mlauAnnotationId :: Lens' MyLibraryAnnotationsUpdate' Text
mlauAnnotationId
  = lens _mlauAnnotationId
      (\ s a -> s{_mlauAnnotationId = a})

-- | String to identify the originator of this request.
mlauSource :: Lens' MyLibraryAnnotationsUpdate' (Maybe Text)
mlauSource
  = lens _mlauSource (\ s a -> s{_mlauSource = a})

-- | OAuth 2.0 token for the current user.
mlauOAuthToken :: Lens' MyLibraryAnnotationsUpdate' (Maybe OAuthToken)
mlauOAuthToken
  = lens _mlauOAuthToken
      (\ s a -> s{_mlauOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mlauFields :: Lens' MyLibraryAnnotationsUpdate' (Maybe Text)
mlauFields
  = lens _mlauFields (\ s a -> s{_mlauFields = a})

instance GoogleAuth MyLibraryAnnotationsUpdate' where
        authKey = mlauKey . _Just
        authToken = mlauOAuthToken . _Just

instance GoogleRequest MyLibraryAnnotationsUpdate'
         where
        type Rs MyLibraryAnnotationsUpdate' = Annotation
        request = requestWithRoute defReq booksURL
        requestWithRoute r u MyLibraryAnnotationsUpdate'{..}
          = go _mlauQuotaUser (Just _mlauPrettyPrint)
              _mlauUserIP
              _mlauKey
              _mlauAnnotationId
              _mlauSource
              _mlauOAuthToken
              _mlauFields
              (Just AltJSON)
              _mlauAnnotation
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MyLibraryAnnotationsUpdateResource)
                      r
                      u
