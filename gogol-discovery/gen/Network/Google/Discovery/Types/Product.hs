{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Discovery.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Discovery.Types.Product where

import           Network.Google.Discovery.Types.Sum
import           Network.Google.Prelude

-- | The schema for the response.
--
-- /See:/ 'restMethodResponse' smart constructor.
newtype RestMethodResponse = RestMethodResponse
    { _rmrRef :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestMethodResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmrRef'
restMethodResponse
    :: RestMethodResponse
restMethodResponse =
    RestMethodResponse
    { _rmrRef = Nothing
    }

-- | Schema ID for the response schema.
rmrRef :: Lens' RestMethodResponse (Maybe Text)
rmrRef = lens _rmrRef (\ s a -> s{_rmrRef = a})

instance FromJSON RestMethodResponse where
        parseJSON
          = withObject "RestMethodResponse"
              (\ o -> RestMethodResponse <$> (o .:? "$ref"))

instance ToJSON RestMethodResponse where
        toJSON RestMethodResponse{..}
          = object (catMaybes [("$ref" .=) <$> _rmrRef])

-- | Common parameters that apply across all apis.
--
-- /See:/ 'restDescriptionParameters' smart constructor.
data RestDescriptionParameters =
    RestDescriptionParameters
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestDescriptionParameters' with the minimum fields required to make a request.
--
restDescriptionParameters
    :: RestDescriptionParameters
restDescriptionParameters = RestDescriptionParameters

instance FromJSON RestDescriptionParameters where
        parseJSON
          = withObject "RestDescriptionParameters"
              (\ o -> pure RestDescriptionParameters)

instance ToJSON RestDescriptionParameters where
        toJSON = const (Object mempty)

--
-- /See:/ 'restMethod' smart constructor.
data RestMethod = RestMethod
    { _rmSupportsMediaDownload   :: !(Maybe Bool)
    , _rmParameterOrder          :: !(Maybe [Text])
    , _rmMediaUpload             :: !(Maybe RestMethodMediaUpload)
    , _rmHTTPMethod              :: !(Maybe Text)
    , _rmPath                    :: !(Maybe Text)
    , _rmResponse                :: !(Maybe RestMethodResponse)
    , _rmSupportsMediaUpload     :: !(Maybe Bool)
    , _rmScopes                  :: !(Maybe [Text])
    , _rmSupportsSubscription    :: !(Maybe Bool)
    , _rmParameters              :: !(Maybe RestMethodParameters)
    , _rmId                      :: !(Maybe Text)
    , _rmEtagRequired            :: !(Maybe Bool)
    , _rmUseMediaDownloadService :: !(Maybe Bool)
    , _rmDescription             :: !(Maybe Text)
    , _rmRequest                 :: !(Maybe RestMethodRequest)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestMethod' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmSupportsMediaDownload'
--
-- * 'rmParameterOrder'
--
-- * 'rmMediaUpload'
--
-- * 'rmHTTPMethod'
--
-- * 'rmPath'
--
-- * 'rmResponse'
--
-- * 'rmSupportsMediaUpload'
--
-- * 'rmScopes'
--
-- * 'rmSupportsSubscription'
--
-- * 'rmParameters'
--
-- * 'rmId'
--
-- * 'rmEtagRequired'
--
-- * 'rmUseMediaDownloadService'
--
-- * 'rmDescription'
--
-- * 'rmRequest'
restMethod
    :: RestMethod
restMethod =
    RestMethod
    { _rmSupportsMediaDownload = Nothing
    , _rmParameterOrder = Nothing
    , _rmMediaUpload = Nothing
    , _rmHTTPMethod = Nothing
    , _rmPath = Nothing
    , _rmResponse = Nothing
    , _rmSupportsMediaUpload = Nothing
    , _rmScopes = Nothing
    , _rmSupportsSubscription = Nothing
    , _rmParameters = Nothing
    , _rmId = Nothing
    , _rmEtagRequired = Nothing
    , _rmUseMediaDownloadService = Nothing
    , _rmDescription = Nothing
    , _rmRequest = Nothing
    }

-- | Whether this method supports media downloads.
rmSupportsMediaDownload :: Lens' RestMethod (Maybe Bool)
rmSupportsMediaDownload
  = lens _rmSupportsMediaDownload
      (\ s a -> s{_rmSupportsMediaDownload = a})

-- | Ordered list of required parameters, serves as a hint to clients on how
-- to structure their method signatures. The array is ordered such that the
-- \"most-significant\" parameter appears first.
rmParameterOrder :: Lens' RestMethod [Text]
rmParameterOrder
  = lens _rmParameterOrder
      (\ s a -> s{_rmParameterOrder = a})
      . _Default
      . _Coerce

-- | Media upload parameters.
rmMediaUpload :: Lens' RestMethod (Maybe RestMethodMediaUpload)
rmMediaUpload
  = lens _rmMediaUpload
      (\ s a -> s{_rmMediaUpload = a})

-- | HTTP method used by this method.
rmHTTPMethod :: Lens' RestMethod (Maybe Text)
rmHTTPMethod
  = lens _rmHTTPMethod (\ s a -> s{_rmHTTPMethod = a})

-- | The URI path of this REST method. Should be used in conjunction with the
-- basePath property at the api-level.
rmPath :: Lens' RestMethod (Maybe Text)
rmPath = lens _rmPath (\ s a -> s{_rmPath = a})

-- | The schema for the response.
rmResponse :: Lens' RestMethod (Maybe RestMethodResponse)
rmResponse
  = lens _rmResponse (\ s a -> s{_rmResponse = a})

-- | Whether this method supports media uploads.
rmSupportsMediaUpload :: Lens' RestMethod (Maybe Bool)
rmSupportsMediaUpload
  = lens _rmSupportsMediaUpload
      (\ s a -> s{_rmSupportsMediaUpload = a})

-- | OAuth 2.0 scopes applicable to this method.
rmScopes :: Lens' RestMethod [Text]
rmScopes
  = lens _rmScopes (\ s a -> s{_rmScopes = a}) .
      _Default
      . _Coerce

-- | Whether this method supports subscriptions.
rmSupportsSubscription :: Lens' RestMethod (Maybe Bool)
rmSupportsSubscription
  = lens _rmSupportsSubscription
      (\ s a -> s{_rmSupportsSubscription = a})

-- | Details for all parameters in this method.
rmParameters :: Lens' RestMethod (Maybe RestMethodParameters)
rmParameters
  = lens _rmParameters (\ s a -> s{_rmParameters = a})

-- | A unique ID for this method. This property can be used to match methods
-- between different versions of Discovery.
rmId :: Lens' RestMethod (Maybe Text)
rmId = lens _rmId (\ s a -> s{_rmId = a})

-- | Whether this method requires an ETag to be specified. The ETag is sent
-- as an HTTP If-Match or If-None-Match header.
rmEtagRequired :: Lens' RestMethod (Maybe Bool)
rmEtagRequired
  = lens _rmEtagRequired
      (\ s a -> s{_rmEtagRequired = a})

-- | Indicates that downloads from this method should use the download
-- service URL (i.e. \"\/download\"). Only applies if the method supports
-- media download.
rmUseMediaDownloadService :: Lens' RestMethod (Maybe Bool)
rmUseMediaDownloadService
  = lens _rmUseMediaDownloadService
      (\ s a -> s{_rmUseMediaDownloadService = a})

-- | Description of this method.
rmDescription :: Lens' RestMethod (Maybe Text)
rmDescription
  = lens _rmDescription
      (\ s a -> s{_rmDescription = a})

-- | The schema for the request.
rmRequest :: Lens' RestMethod (Maybe RestMethodRequest)
rmRequest
  = lens _rmRequest (\ s a -> s{_rmRequest = a})

instance FromJSON RestMethod where
        parseJSON
          = withObject "RestMethod"
              (\ o ->
                 RestMethod <$>
                   (o .:? "supportsMediaDownload") <*>
                     (o .:? "parameterOrder" .!= mempty)
                     <*> (o .:? "mediaUpload")
                     <*> (o .:? "httpMethod")
                     <*> (o .:? "path")
                     <*> (o .:? "response")
                     <*> (o .:? "supportsMediaUpload")
                     <*> (o .:? "scopes" .!= mempty)
                     <*> (o .:? "supportsSubscription")
                     <*> (o .:? "parameters")
                     <*> (o .:? "id")
                     <*> (o .:? "etagRequired")
                     <*> (o .:? "useMediaDownloadService")
                     <*> (o .:? "description")
                     <*> (o .:? "request"))

instance ToJSON RestMethod where
        toJSON RestMethod{..}
          = object
              (catMaybes
                 [("supportsMediaDownload" .=) <$>
                    _rmSupportsMediaDownload,
                  ("parameterOrder" .=) <$> _rmParameterOrder,
                  ("mediaUpload" .=) <$> _rmMediaUpload,
                  ("httpMethod" .=) <$> _rmHTTPMethod,
                  ("path" .=) <$> _rmPath,
                  ("response" .=) <$> _rmResponse,
                  ("supportsMediaUpload" .=) <$>
                    _rmSupportsMediaUpload,
                  ("scopes" .=) <$> _rmScopes,
                  ("supportsSubscription" .=) <$>
                    _rmSupportsSubscription,
                  ("parameters" .=) <$> _rmParameters,
                  ("id" .=) <$> _rmId,
                  ("etagRequired" .=) <$> _rmEtagRequired,
                  ("useMediaDownloadService" .=) <$>
                    _rmUseMediaDownloadService,
                  ("description" .=) <$> _rmDescription,
                  ("request" .=) <$> _rmRequest])

-- | API-level methods for this API.
--
-- /See:/ 'restDescriptionMethods' smart constructor.
data RestDescriptionMethods =
    RestDescriptionMethods
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestDescriptionMethods' with the minimum fields required to make a request.
--
restDescriptionMethods
    :: RestDescriptionMethods
restDescriptionMethods = RestDescriptionMethods

instance FromJSON RestDescriptionMethods where
        parseJSON
          = withObject "RestDescriptionMethods"
              (\ o -> pure RestDescriptionMethods)

instance ToJSON RestDescriptionMethods where
        toJSON = const (Object mempty)

--
-- /See:/ 'jSONSchemaVariantMap' smart constructor.
data JSONSchemaVariantMap = JSONSchemaVariantMap
    { _jsvmRef       :: !(Maybe Text)
    , _jsvmTypeValue :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JSONSchemaVariantMap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsvmRef'
--
-- * 'jsvmTypeValue'
jSONSchemaVariantMap
    :: JSONSchemaVariantMap
jSONSchemaVariantMap =
    JSONSchemaVariantMap
    { _jsvmRef = Nothing
    , _jsvmTypeValue = Nothing
    }

jsvmRef :: Lens' JSONSchemaVariantMap (Maybe Text)
jsvmRef = lens _jsvmRef (\ s a -> s{_jsvmRef = a})

jsvmTypeValue :: Lens' JSONSchemaVariantMap (Maybe Text)
jsvmTypeValue
  = lens _jsvmTypeValue
      (\ s a -> s{_jsvmTypeValue = a})

instance FromJSON JSONSchemaVariantMap where
        parseJSON
          = withObject "JSONSchemaVariantMap"
              (\ o ->
                 JSONSchemaVariantMap <$>
                   (o .:? "$ref") <*> (o .:? "type_value"))

instance ToJSON JSONSchemaVariantMap where
        toJSON JSONSchemaVariantMap{..}
          = object
              (catMaybes
                 [("$ref" .=) <$> _jsvmRef,
                  ("type_value" .=) <$> _jsvmTypeValue])

--
-- /See:/ 'restResource' smart constructor.
data RestResource = RestResource
    { _rrResources :: !(Maybe RestResourceResources)
    , _rrMethods   :: !(Maybe RestResourceMethods)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrResources'
--
-- * 'rrMethods'
restResource
    :: RestResource
restResource =
    RestResource
    { _rrResources = Nothing
    , _rrMethods = Nothing
    }

-- | Sub-resources on this resource.
rrResources :: Lens' RestResource (Maybe RestResourceResources)
rrResources
  = lens _rrResources (\ s a -> s{_rrResources = a})

-- | Methods on this resource.
rrMethods :: Lens' RestResource (Maybe RestResourceMethods)
rrMethods
  = lens _rrMethods (\ s a -> s{_rrMethods = a})

instance FromJSON RestResource where
        parseJSON
          = withObject "RestResource"
              (\ o ->
                 RestResource <$>
                   (o .:? "resources") <*> (o .:? "methods"))

instance ToJSON RestResource where
        toJSON RestResource{..}
          = object
              (catMaybes
                 [("resources" .=) <$> _rrResources,
                  ("methods" .=) <$> _rrMethods])

-- | Available OAuth 2.0 scopes.
--
-- /See:/ 'restDescriptionAuthOAuth2Scopes' smart constructor.
data RestDescriptionAuthOAuth2Scopes =
    RestDescriptionAuthOAuth2Scopes
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestDescriptionAuthOAuth2Scopes' with the minimum fields required to make a request.
--
restDescriptionAuthOAuth2Scopes
    :: RestDescriptionAuthOAuth2Scopes
restDescriptionAuthOAuth2Scopes = RestDescriptionAuthOAuth2Scopes

instance FromJSON RestDescriptionAuthOAuth2Scopes
         where
        parseJSON
          = withObject "RestDescriptionAuthOAuth2Scopes"
              (\ o -> pure RestDescriptionAuthOAuth2Scopes)

instance ToJSON RestDescriptionAuthOAuth2Scopes where
        toJSON = const (Object mempty)

-- | Links to 16x16 and 32x32 icons representing the API.
--
-- /See:/ 'directoryListItemsIcons' smart constructor.
data DirectoryListItemsIcons = DirectoryListItemsIcons
    { _dliiX16 :: !(Maybe Text)
    , _dliiX32 :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DirectoryListItemsIcons' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dliiX16'
--
-- * 'dliiX32'
directoryListItemsIcons
    :: DirectoryListItemsIcons
directoryListItemsIcons =
    DirectoryListItemsIcons
    { _dliiX16 = Nothing
    , _dliiX32 = Nothing
    }

-- | The URL of the 16x16 icon.
dliiX16 :: Lens' DirectoryListItemsIcons (Maybe Text)
dliiX16 = lens _dliiX16 (\ s a -> s{_dliiX16 = a})

-- | The URL of the 32x32 icon.
dliiX32 :: Lens' DirectoryListItemsIcons (Maybe Text)
dliiX32 = lens _dliiX32 (\ s a -> s{_dliiX32 = a})

instance FromJSON DirectoryListItemsIcons where
        parseJSON
          = withObject "DirectoryListItemsIcons"
              (\ o ->
                 DirectoryListItemsIcons <$>
                   (o .:? "x16") <*> (o .:? "x32"))

instance ToJSON DirectoryListItemsIcons where
        toJSON DirectoryListItemsIcons{..}
          = object
              (catMaybes
                 [("x16" .=) <$> _dliiX16, ("x32" .=) <$> _dliiX32])

-- | Sub-resources on this resource.
--
-- /See:/ 'restResourceResources' smart constructor.
data RestResourceResources =
    RestResourceResources
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestResourceResources' with the minimum fields required to make a request.
--
restResourceResources
    :: RestResourceResources
restResourceResources = RestResourceResources

instance FromJSON RestResourceResources where
        parseJSON
          = withObject "RestResourceResources"
              (\ o -> pure RestResourceResources)

instance ToJSON RestResourceResources where
        toJSON = const (Object mempty)

-- | Supports uploading as a single HTTP request.
--
-- /See:/ 'restMethodMediaUploadProtocolsSimple' smart constructor.
data RestMethodMediaUploadProtocolsSimple = RestMethodMediaUploadProtocolsSimple
    { _rmmupsPath       :: !(Maybe Text)
    , _rmmupsMultiParty :: !Bool
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestMethodMediaUploadProtocolsSimple' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmmupsPath'
--
-- * 'rmmupsMultiParty'
restMethodMediaUploadProtocolsSimple
    :: RestMethodMediaUploadProtocolsSimple
restMethodMediaUploadProtocolsSimple =
    RestMethodMediaUploadProtocolsSimple
    { _rmmupsPath = Nothing
    , _rmmupsMultiParty = True
    }

-- | The URI path to be used for upload. Should be used in conjunction with
-- the basePath property at the api-level.
rmmupsPath :: Lens' RestMethodMediaUploadProtocolsSimple (Maybe Text)
rmmupsPath
  = lens _rmmupsPath (\ s a -> s{_rmmupsPath = a})

-- | True if this endpoint supports upload multipart media.
rmmupsMultiParty :: Lens' RestMethodMediaUploadProtocolsSimple Bool
rmmupsMultiParty
  = lens _rmmupsMultiParty
      (\ s a -> s{_rmmupsMultiParty = a})

instance FromJSON
         RestMethodMediaUploadProtocolsSimple where
        parseJSON
          = withObject "RestMethodMediaUploadProtocolsSimple"
              (\ o ->
                 RestMethodMediaUploadProtocolsSimple <$>
                   (o .:? "path") <*> (o .:? "multipart" .!= True))

instance ToJSON RestMethodMediaUploadProtocolsSimple
         where
        toJSON RestMethodMediaUploadProtocolsSimple{..}
          = object
              (catMaybes
                 [("path" .=) <$> _rmmupsPath,
                  Just ("multipart" .= _rmmupsMultiParty)])

-- | OAuth 2.0 authentication information.
--
-- /See:/ 'restDescriptionAuthOAuth2' smart constructor.
newtype RestDescriptionAuthOAuth2 = RestDescriptionAuthOAuth2
    { _rdaoaScopes :: Maybe RestDescriptionAuthOAuth2Scopes
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestDescriptionAuthOAuth2' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdaoaScopes'
restDescriptionAuthOAuth2
    :: RestDescriptionAuthOAuth2
restDescriptionAuthOAuth2 =
    RestDescriptionAuthOAuth2
    { _rdaoaScopes = Nothing
    }

-- | Available OAuth 2.0 scopes.
rdaoaScopes :: Lens' RestDescriptionAuthOAuth2 (Maybe RestDescriptionAuthOAuth2Scopes)
rdaoaScopes
  = lens _rdaoaScopes (\ s a -> s{_rdaoaScopes = a})

instance FromJSON RestDescriptionAuthOAuth2 where
        parseJSON
          = withObject "RestDescriptionAuthOAuth2"
              (\ o ->
                 RestDescriptionAuthOAuth2 <$> (o .:? "scopes"))

instance ToJSON RestDescriptionAuthOAuth2 where
        toJSON RestDescriptionAuthOAuth2{..}
          = object (catMaybes [("scopes" .=) <$> _rdaoaScopes])

-- | Methods on this resource.
--
-- /See:/ 'restResourceMethods' smart constructor.
data RestResourceMethods =
    RestResourceMethods
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestResourceMethods' with the minimum fields required to make a request.
--
restResourceMethods
    :: RestResourceMethods
restResourceMethods = RestResourceMethods

instance FromJSON RestResourceMethods where
        parseJSON
          = withObject "RestResourceMethods"
              (\ o -> pure RestResourceMethods)

instance ToJSON RestResourceMethods where
        toJSON = const (Object mempty)

-- | In a variant data type, the value of one property is used to determine
-- how to interpret the entire entity. Its value must exist in a map of
-- descriminant values to schema names.
--
-- /See:/ 'jSONSchemaVariant' smart constructor.
data JSONSchemaVariant = JSONSchemaVariant
    { _jsvDiscriminant :: !(Maybe Text)
    , _jsvMap          :: !(Maybe [JSONSchemaVariantMap])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JSONSchemaVariant' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsvDiscriminant'
--
-- * 'jsvMap'
jSONSchemaVariant
    :: JSONSchemaVariant
jSONSchemaVariant =
    JSONSchemaVariant
    { _jsvDiscriminant = Nothing
    , _jsvMap = Nothing
    }

-- | The name of the type discriminant property.
jsvDiscriminant :: Lens' JSONSchemaVariant (Maybe Text)
jsvDiscriminant
  = lens _jsvDiscriminant
      (\ s a -> s{_jsvDiscriminant = a})

-- | The map of discriminant value to schema to use for parsing..
jsvMap :: Lens' JSONSchemaVariant [JSONSchemaVariantMap]
jsvMap
  = lens _jsvMap (\ s a -> s{_jsvMap = a}) . _Default .
      _Coerce

instance FromJSON JSONSchemaVariant where
        parseJSON
          = withObject "JSONSchemaVariant"
              (\ o ->
                 JSONSchemaVariant <$>
                   (o .:? "discriminant") <*> (o .:? "map" .!= mempty))

instance ToJSON JSONSchemaVariant where
        toJSON JSONSchemaVariant{..}
          = object
              (catMaybes
                 [("discriminant" .=) <$> _jsvDiscriminant,
                  ("map" .=) <$> _jsvMap])

-- | Authentication information.
--
-- /See:/ 'restDescriptionAuth' smart constructor.
newtype RestDescriptionAuth = RestDescriptionAuth
    { _rdaOAuth2 :: Maybe RestDescriptionAuthOAuth2
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestDescriptionAuth' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdaOAuth2'
restDescriptionAuth
    :: RestDescriptionAuth
restDescriptionAuth =
    RestDescriptionAuth
    { _rdaOAuth2 = Nothing
    }

-- | OAuth 2.0 authentication information.
rdaOAuth2 :: Lens' RestDescriptionAuth (Maybe RestDescriptionAuthOAuth2)
rdaOAuth2
  = lens _rdaOAuth2 (\ s a -> s{_rdaOAuth2 = a})

instance FromJSON RestDescriptionAuth where
        parseJSON
          = withObject "RestDescriptionAuth"
              (\ o -> RestDescriptionAuth <$> (o .:? "oauth2"))

instance ToJSON RestDescriptionAuth where
        toJSON RestDescriptionAuth{..}
          = object (catMaybes [("oauth2" .=) <$> _rdaOAuth2])

-- | Links to 16x16 and 32x32 icons representing the API.
--
-- /See:/ 'restDescriptionIcons' smart constructor.
data RestDescriptionIcons = RestDescriptionIcons
    { _rdiX16 :: !(Maybe Text)
    , _rdiX32 :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestDescriptionIcons' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdiX16'
--
-- * 'rdiX32'
restDescriptionIcons
    :: RestDescriptionIcons
restDescriptionIcons =
    RestDescriptionIcons
    { _rdiX16 = Nothing
    , _rdiX32 = Nothing
    }

-- | The URL of the 16x16 icon.
rdiX16 :: Lens' RestDescriptionIcons (Maybe Text)
rdiX16 = lens _rdiX16 (\ s a -> s{_rdiX16 = a})

-- | The URL of the 32x32 icon.
rdiX32 :: Lens' RestDescriptionIcons (Maybe Text)
rdiX32 = lens _rdiX32 (\ s a -> s{_rdiX32 = a})

instance FromJSON RestDescriptionIcons where
        parseJSON
          = withObject "RestDescriptionIcons"
              (\ o ->
                 RestDescriptionIcons <$>
                   (o .:? "x16") <*> (o .:? "x32"))

instance ToJSON RestDescriptionIcons where
        toJSON RestDescriptionIcons{..}
          = object
              (catMaybes
                 [("x16" .=) <$> _rdiX16, ("x32" .=) <$> _rdiX32])

--
-- /See:/ 'restDescription' smart constructor.
data RestDescription = RestDescription
    { _rdEtag                      :: !(Maybe Text)
    , _rdSchemas                   :: !(Maybe RestDescriptionSchemas)
    , _rdServicePath               :: !(Maybe Text)
    , _rdBasePath                  :: !(Maybe Text)
    , _rdKind                      :: !Text
    , _rdExponentialBackoffDefault :: !(Maybe Bool)
    , _rdAuth                      :: !(Maybe RestDescriptionAuth)
    , _rdIcons                     :: !(Maybe RestDescriptionIcons)
    , _rdBaseURL                   :: !(Maybe Text)
    , _rdProtocol                  :: !Text
    , _rdOwnerName                 :: !(Maybe Text)
    , _rdResources                 :: !(Maybe RestDescriptionResources)
    , _rdOwnerDomain               :: !(Maybe Text)
    , _rdBatchPath                 :: !Text
    , _rdMethods                   :: !(Maybe RestDescriptionMethods)
    , _rdName                      :: !(Maybe Text)
    , _rdPackagePath               :: !(Maybe Text)
    , _rdFeatures                  :: !(Maybe [Text])
    , _rdVersion                   :: !(Maybe Text)
    , _rdParameters                :: !(Maybe RestDescriptionParameters)
    , _rdDocumentationLink         :: !(Maybe Text)
    , _rdRootURL                   :: !(Maybe Text)
    , _rdId                        :: !(Maybe Text)
    , _rdCanonicalName             :: !(Maybe Text)
    , _rdLabels                    :: !(Maybe [Text])
    , _rdDiscoveryVersion          :: !Text
    , _rdTitle                     :: !(Maybe Text)
    , _rdRevision                  :: !(Maybe Text)
    , _rdDescription               :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdEtag'
--
-- * 'rdSchemas'
--
-- * 'rdServicePath'
--
-- * 'rdBasePath'
--
-- * 'rdKind'
--
-- * 'rdExponentialBackoffDefault'
--
-- * 'rdAuth'
--
-- * 'rdIcons'
--
-- * 'rdBaseURL'
--
-- * 'rdProtocol'
--
-- * 'rdOwnerName'
--
-- * 'rdResources'
--
-- * 'rdOwnerDomain'
--
-- * 'rdBatchPath'
--
-- * 'rdMethods'
--
-- * 'rdName'
--
-- * 'rdPackagePath'
--
-- * 'rdFeatures'
--
-- * 'rdVersion'
--
-- * 'rdParameters'
--
-- * 'rdDocumentationLink'
--
-- * 'rdRootURL'
--
-- * 'rdId'
--
-- * 'rdCanonicalName'
--
-- * 'rdLabels'
--
-- * 'rdDiscoveryVersion'
--
-- * 'rdTitle'
--
-- * 'rdRevision'
--
-- * 'rdDescription'
restDescription
    :: RestDescription
restDescription =
    RestDescription
    { _rdEtag = Nothing
    , _rdSchemas = Nothing
    , _rdServicePath = Nothing
    , _rdBasePath = Nothing
    , _rdKind = "discovery#restDescription"
    , _rdExponentialBackoffDefault = Nothing
    , _rdAuth = Nothing
    , _rdIcons = Nothing
    , _rdBaseURL = Nothing
    , _rdProtocol = "rest"
    , _rdOwnerName = Nothing
    , _rdResources = Nothing
    , _rdOwnerDomain = Nothing
    , _rdBatchPath = "batch"
    , _rdMethods = Nothing
    , _rdName = Nothing
    , _rdPackagePath = Nothing
    , _rdFeatures = Nothing
    , _rdVersion = Nothing
    , _rdParameters = Nothing
    , _rdDocumentationLink = Nothing
    , _rdRootURL = Nothing
    , _rdId = Nothing
    , _rdCanonicalName = Nothing
    , _rdLabels = Nothing
    , _rdDiscoveryVersion = "v1"
    , _rdTitle = Nothing
    , _rdRevision = Nothing
    , _rdDescription = Nothing
    }

-- | The ETag for this response.
rdEtag :: Lens' RestDescription (Maybe Text)
rdEtag = lens _rdEtag (\ s a -> s{_rdEtag = a})

-- | The schemas for this API.
rdSchemas :: Lens' RestDescription (Maybe RestDescriptionSchemas)
rdSchemas
  = lens _rdSchemas (\ s a -> s{_rdSchemas = a})

-- | The base path for all REST requests.
rdServicePath :: Lens' RestDescription (Maybe Text)
rdServicePath
  = lens _rdServicePath
      (\ s a -> s{_rdServicePath = a})

-- | [DEPRECATED] The base path for REST requests.
rdBasePath :: Lens' RestDescription (Maybe Text)
rdBasePath
  = lens _rdBasePath (\ s a -> s{_rdBasePath = a})

-- | The kind for this response.
rdKind :: Lens' RestDescription Text
rdKind = lens _rdKind (\ s a -> s{_rdKind = a})

-- | Enable exponential backoff for suitable methods in the generated
-- clients.
rdExponentialBackoffDefault :: Lens' RestDescription (Maybe Bool)
rdExponentialBackoffDefault
  = lens _rdExponentialBackoffDefault
      (\ s a -> s{_rdExponentialBackoffDefault = a})

-- | Authentication information.
rdAuth :: Lens' RestDescription (Maybe RestDescriptionAuth)
rdAuth = lens _rdAuth (\ s a -> s{_rdAuth = a})

-- | Links to 16x16 and 32x32 icons representing the API.
rdIcons :: Lens' RestDescription (Maybe RestDescriptionIcons)
rdIcons = lens _rdIcons (\ s a -> s{_rdIcons = a})

-- | [DEPRECATED] The base URL for REST requests.
rdBaseURL :: Lens' RestDescription (Maybe Text)
rdBaseURL
  = lens _rdBaseURL (\ s a -> s{_rdBaseURL = a})

-- | The protocol described by this document.
rdProtocol :: Lens' RestDescription Text
rdProtocol
  = lens _rdProtocol (\ s a -> s{_rdProtocol = a})

-- | The name of the owner of this API. See ownerDomain.
rdOwnerName :: Lens' RestDescription (Maybe Text)
rdOwnerName
  = lens _rdOwnerName (\ s a -> s{_rdOwnerName = a})

-- | The resources in this API.
rdResources :: Lens' RestDescription (Maybe RestDescriptionResources)
rdResources
  = lens _rdResources (\ s a -> s{_rdResources = a})

-- | The domain of the owner of this API. Together with the ownerName and a
-- packagePath values, this can be used to generate a library for this API
-- which would have a unique fully qualified name.
rdOwnerDomain :: Lens' RestDescription (Maybe Text)
rdOwnerDomain
  = lens _rdOwnerDomain
      (\ s a -> s{_rdOwnerDomain = a})

-- | The path for REST batch requests.
rdBatchPath :: Lens' RestDescription Text
rdBatchPath
  = lens _rdBatchPath (\ s a -> s{_rdBatchPath = a})

-- | API-level methods for this API.
rdMethods :: Lens' RestDescription (Maybe RestDescriptionMethods)
rdMethods
  = lens _rdMethods (\ s a -> s{_rdMethods = a})

-- | The name of this API.
rdName :: Lens' RestDescription (Maybe Text)
rdName = lens _rdName (\ s a -> s{_rdName = a})

-- | The package of the owner of this API. See ownerDomain.
rdPackagePath :: Lens' RestDescription (Maybe Text)
rdPackagePath
  = lens _rdPackagePath
      (\ s a -> s{_rdPackagePath = a})

-- | A list of supported features for this API.
rdFeatures :: Lens' RestDescription [Text]
rdFeatures
  = lens _rdFeatures (\ s a -> s{_rdFeatures = a}) .
      _Default
      . _Coerce

-- | The version of this API.
rdVersion :: Lens' RestDescription (Maybe Text)
rdVersion
  = lens _rdVersion (\ s a -> s{_rdVersion = a})

-- | Common parameters that apply across all apis.
rdParameters :: Lens' RestDescription (Maybe RestDescriptionParameters)
rdParameters
  = lens _rdParameters (\ s a -> s{_rdParameters = a})

-- | A link to human readable documentation for the API.
rdDocumentationLink :: Lens' RestDescription (Maybe Text)
rdDocumentationLink
  = lens _rdDocumentationLink
      (\ s a -> s{_rdDocumentationLink = a})

-- | The root URL under which all API services live.
rdRootURL :: Lens' RestDescription (Maybe Text)
rdRootURL
  = lens _rdRootURL (\ s a -> s{_rdRootURL = a})

-- | The ID of this API.
rdId :: Lens' RestDescription (Maybe Text)
rdId = lens _rdId (\ s a -> s{_rdId = a})

-- | Indicates how the API name should be capitalized and split into various
-- parts. Useful for generating pretty class names.
rdCanonicalName :: Lens' RestDescription (Maybe Text)
rdCanonicalName
  = lens _rdCanonicalName
      (\ s a -> s{_rdCanonicalName = a})

-- | Labels for the status of this API, such as labs or deprecated.
rdLabels :: Lens' RestDescription [Text]
rdLabels
  = lens _rdLabels (\ s a -> s{_rdLabels = a}) .
      _Default
      . _Coerce

-- | Indicate the version of the Discovery API used to generate this doc.
rdDiscoveryVersion :: Lens' RestDescription Text
rdDiscoveryVersion
  = lens _rdDiscoveryVersion
      (\ s a -> s{_rdDiscoveryVersion = a})

-- | The title of this API.
rdTitle :: Lens' RestDescription (Maybe Text)
rdTitle = lens _rdTitle (\ s a -> s{_rdTitle = a})

-- | The version of this API.
rdRevision :: Lens' RestDescription (Maybe Text)
rdRevision
  = lens _rdRevision (\ s a -> s{_rdRevision = a})

-- | The description of this API.
rdDescription :: Lens' RestDescription (Maybe Text)
rdDescription
  = lens _rdDescription
      (\ s a -> s{_rdDescription = a})

instance FromJSON RestDescription where
        parseJSON
          = withObject "RestDescription"
              (\ o ->
                 RestDescription <$>
                   (o .:? "etag") <*> (o .:? "schemas") <*>
                     (o .:? "servicePath")
                     <*> (o .:? "basePath")
                     <*> (o .:? "kind" .!= "discovery#restDescription")
                     <*> (o .:? "exponentialBackoffDefault")
                     <*> (o .:? "auth")
                     <*> (o .:? "icons")
                     <*> (o .:? "baseUrl")
                     <*> (o .:? "protocol" .!= "rest")
                     <*> (o .:? "ownerName")
                     <*> (o .:? "resources")
                     <*> (o .:? "ownerDomain")
                     <*> (o .:? "batchPath" .!= "batch")
                     <*> (o .:? "methods")
                     <*> (o .:? "name")
                     <*> (o .:? "packagePath")
                     <*> (o .:? "features" .!= mempty)
                     <*> (o .:? "version")
                     <*> (o .:? "parameters")
                     <*> (o .:? "documentationLink")
                     <*> (o .:? "rootUrl")
                     <*> (o .:? "id")
                     <*> (o .:? "canonicalName")
                     <*> (o .:? "labels" .!= mempty)
                     <*> (o .:? "discoveryVersion" .!= "v1")
                     <*> (o .:? "title")
                     <*> (o .:? "revision")
                     <*> (o .:? "description"))

instance ToJSON RestDescription where
        toJSON RestDescription{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _rdEtag,
                  ("schemas" .=) <$> _rdSchemas,
                  ("servicePath" .=) <$> _rdServicePath,
                  ("basePath" .=) <$> _rdBasePath,
                  Just ("kind" .= _rdKind),
                  ("exponentialBackoffDefault" .=) <$>
                    _rdExponentialBackoffDefault,
                  ("auth" .=) <$> _rdAuth, ("icons" .=) <$> _rdIcons,
                  ("baseUrl" .=) <$> _rdBaseURL,
                  Just ("protocol" .= _rdProtocol),
                  ("ownerName" .=) <$> _rdOwnerName,
                  ("resources" .=) <$> _rdResources,
                  ("ownerDomain" .=) <$> _rdOwnerDomain,
                  Just ("batchPath" .= _rdBatchPath),
                  ("methods" .=) <$> _rdMethods,
                  ("name" .=) <$> _rdName,
                  ("packagePath" .=) <$> _rdPackagePath,
                  ("features" .=) <$> _rdFeatures,
                  ("version" .=) <$> _rdVersion,
                  ("parameters" .=) <$> _rdParameters,
                  ("documentationLink" .=) <$> _rdDocumentationLink,
                  ("rootUrl" .=) <$> _rdRootURL, ("id" .=) <$> _rdId,
                  ("canonicalName" .=) <$> _rdCanonicalName,
                  ("labels" .=) <$> _rdLabels,
                  Just ("discoveryVersion" .= _rdDiscoveryVersion),
                  ("title" .=) <$> _rdTitle,
                  ("revision" .=) <$> _rdRevision,
                  ("description" .=) <$> _rdDescription])

--
-- /See:/ 'jSONSchema' smart constructor.
data JSONSchema = JSONSchema
    { _jsAnnotations          :: !(Maybe JSONSchemaAnnotations)
    , _jsVariant              :: !(Maybe JSONSchemaVariant)
    , _jsLocation             :: !(Maybe Text)
    , _jsRef                  :: !(Maybe Text)
    , _jsPattern              :: !(Maybe Text)
    , _jsMaximum              :: !(Maybe Text)
    , _jsDefault              :: !(Maybe Text)
    , _jsFormat               :: !(Maybe Text)
    , _jsItems                :: !(Maybe JSONSchema)
    , _jsMinimum              :: !(Maybe Text)
    , _jsRequired             :: !(Maybe Bool)
    , _jsId                   :: !(Maybe Text)
    , _jsAdditionalProperties :: !(Maybe JSONSchema)
    , _jsType                 :: !(Maybe Text)
    , _jsEnum                 :: !(Maybe [Text])
    , _jsRepeated             :: !(Maybe Bool)
    , _jsReadOnly             :: !(Maybe Bool)
    , _jsEnumDescriptions     :: !(Maybe [Text])
    , _jsDescription          :: !(Maybe Text)
    , _jsProperties           :: !(Maybe JSONSchemaProperties)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JSONSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsAnnotations'
--
-- * 'jsVariant'
--
-- * 'jsLocation'
--
-- * 'jsRef'
--
-- * 'jsPattern'
--
-- * 'jsMaximum'
--
-- * 'jsDefault'
--
-- * 'jsFormat'
--
-- * 'jsItems'
--
-- * 'jsMinimum'
--
-- * 'jsRequired'
--
-- * 'jsId'
--
-- * 'jsAdditionalProperties'
--
-- * 'jsType'
--
-- * 'jsEnum'
--
-- * 'jsRepeated'
--
-- * 'jsReadOnly'
--
-- * 'jsEnumDescriptions'
--
-- * 'jsDescription'
--
-- * 'jsProperties'
jSONSchema
    :: JSONSchema
jSONSchema =
    JSONSchema
    { _jsAnnotations = Nothing
    , _jsVariant = Nothing
    , _jsLocation = Nothing
    , _jsRef = Nothing
    , _jsPattern = Nothing
    , _jsMaximum = Nothing
    , _jsDefault = Nothing
    , _jsFormat = Nothing
    , _jsItems = Nothing
    , _jsMinimum = Nothing
    , _jsRequired = Nothing
    , _jsId = Nothing
    , _jsAdditionalProperties = Nothing
    , _jsType = Nothing
    , _jsEnum = Nothing
    , _jsRepeated = Nothing
    , _jsReadOnly = Nothing
    , _jsEnumDescriptions = Nothing
    , _jsDescription = Nothing
    , _jsProperties = Nothing
    }

-- | Additional information about this property.
jsAnnotations :: Lens' JSONSchema (Maybe JSONSchemaAnnotations)
jsAnnotations
  = lens _jsAnnotations
      (\ s a -> s{_jsAnnotations = a})

-- | In a variant data type, the value of one property is used to determine
-- how to interpret the entire entity. Its value must exist in a map of
-- descriminant values to schema names.
jsVariant :: Lens' JSONSchema (Maybe JSONSchemaVariant)
jsVariant
  = lens _jsVariant (\ s a -> s{_jsVariant = a})

-- | Whether this parameter goes in the query or the path for REST requests.
jsLocation :: Lens' JSONSchema (Maybe Text)
jsLocation
  = lens _jsLocation (\ s a -> s{_jsLocation = a})

-- | A reference to another schema. The value of this property is the \"id\"
-- of another schema.
jsRef :: Lens' JSONSchema (Maybe Text)
jsRef = lens _jsRef (\ s a -> s{_jsRef = a})

-- | The regular expression this parameter must conform to. Uses Java 6 regex
-- format:
-- http:\/\/docs.oracle.com\/javase\/6\/docs\/api\/java\/util\/regex\/Pattern.html
jsPattern :: Lens' JSONSchema (Maybe Text)
jsPattern
  = lens _jsPattern (\ s a -> s{_jsPattern = a})

-- | The maximum value of this parameter.
jsMaximum :: Lens' JSONSchema (Maybe Text)
jsMaximum
  = lens _jsMaximum (\ s a -> s{_jsMaximum = a})

-- | The default value of this property (if one exists).
jsDefault :: Lens' JSONSchema (Maybe Text)
jsDefault
  = lens _jsDefault (\ s a -> s{_jsDefault = a})

-- | An additional regular expression or key that helps constrain the value.
-- For more details see:
-- http:\/\/tools.ietf.org\/html\/draft-zyp-json-schema-03#section-5.23
jsFormat :: Lens' JSONSchema (Maybe Text)
jsFormat = lens _jsFormat (\ s a -> s{_jsFormat = a})

-- | If this is a schema for an array, this property is the schema for each
-- element in the array.
jsItems :: Lens' JSONSchema (Maybe JSONSchema)
jsItems = lens _jsItems (\ s a -> s{_jsItems = a})

-- | The minimum value of this parameter.
jsMinimum :: Lens' JSONSchema (Maybe Text)
jsMinimum
  = lens _jsMinimum (\ s a -> s{_jsMinimum = a})

-- | Whether the parameter is required.
jsRequired :: Lens' JSONSchema (Maybe Bool)
jsRequired
  = lens _jsRequired (\ s a -> s{_jsRequired = a})

-- | Unique identifier for this schema.
jsId :: Lens' JSONSchema (Maybe Text)
jsId = lens _jsId (\ s a -> s{_jsId = a})

-- | If this is a schema for an object, this property is the schema for any
-- additional properties with dynamic keys on this object.
jsAdditionalProperties :: Lens' JSONSchema (Maybe JSONSchema)
jsAdditionalProperties
  = lens _jsAdditionalProperties
      (\ s a -> s{_jsAdditionalProperties = a})

-- | The value type for this schema. A list of values can be found here:
-- http:\/\/tools.ietf.org\/html\/draft-zyp-json-schema-03#section-5.1
jsType :: Lens' JSONSchema (Maybe Text)
jsType = lens _jsType (\ s a -> s{_jsType = a})

-- | Values this parameter may take (if it is an enum).
jsEnum :: Lens' JSONSchema [Text]
jsEnum
  = lens _jsEnum (\ s a -> s{_jsEnum = a}) . _Default .
      _Coerce

-- | Whether this parameter may appear multiple times.
jsRepeated :: Lens' JSONSchema (Maybe Bool)
jsRepeated
  = lens _jsRepeated (\ s a -> s{_jsRepeated = a})

-- | The value is read-only, generated by the service. The value cannot be
-- modified by the client. If the value is included in a POST, PUT, or
-- PATCH request, it is ignored by the service.
jsReadOnly :: Lens' JSONSchema (Maybe Bool)
jsReadOnly
  = lens _jsReadOnly (\ s a -> s{_jsReadOnly = a})

-- | The descriptions for the enums. Each position maps to the corresponding
-- value in the \"enum\" array.
jsEnumDescriptions :: Lens' JSONSchema [Text]
jsEnumDescriptions
  = lens _jsEnumDescriptions
      (\ s a -> s{_jsEnumDescriptions = a})
      . _Default
      . _Coerce

-- | A description of this object.
jsDescription :: Lens' JSONSchema (Maybe Text)
jsDescription
  = lens _jsDescription
      (\ s a -> s{_jsDescription = a})

-- | If this is a schema for an object, list the schema for each property of
-- this object.
jsProperties :: Lens' JSONSchema (Maybe JSONSchemaProperties)
jsProperties
  = lens _jsProperties (\ s a -> s{_jsProperties = a})

instance FromJSON JSONSchema where
        parseJSON
          = withObject "JSONSchema"
              (\ o ->
                 JSONSchema <$>
                   (o .:? "annotations") <*> (o .:? "variant") <*>
                     (o .:? "location")
                     <*> (o .:? "$ref")
                     <*> (o .:? "pattern")
                     <*> (o .:? "maximum")
                     <*> (o .:? "default")
                     <*> (o .:? "format")
                     <*> (o .:? "items")
                     <*> (o .:? "minimum")
                     <*> (o .:? "required")
                     <*> (o .:? "id")
                     <*> (o .:? "additionalProperties")
                     <*> (o .:? "type")
                     <*> (o .:? "enum" .!= mempty)
                     <*> (o .:? "repeated")
                     <*> (o .:? "readOnly")
                     <*> (o .:? "enumDescriptions" .!= mempty)
                     <*> (o .:? "description")
                     <*> (o .:? "properties"))

instance ToJSON JSONSchema where
        toJSON JSONSchema{..}
          = object
              (catMaybes
                 [("annotations" .=) <$> _jsAnnotations,
                  ("variant" .=) <$> _jsVariant,
                  ("location" .=) <$> _jsLocation,
                  ("$ref" .=) <$> _jsRef,
                  ("pattern" .=) <$> _jsPattern,
                  ("maximum" .=) <$> _jsMaximum,
                  ("default" .=) <$> _jsDefault,
                  ("format" .=) <$> _jsFormat,
                  ("items" .=) <$> _jsItems,
                  ("minimum" .=) <$> _jsMinimum,
                  ("required" .=) <$> _jsRequired, ("id" .=) <$> _jsId,
                  ("additionalProperties" .=) <$>
                    _jsAdditionalProperties,
                  ("type" .=) <$> _jsType, ("enum" .=) <$> _jsEnum,
                  ("repeated" .=) <$> _jsRepeated,
                  ("readOnly" .=) <$> _jsReadOnly,
                  ("enumDescriptions" .=) <$> _jsEnumDescriptions,
                  ("description" .=) <$> _jsDescription,
                  ("properties" .=) <$> _jsProperties])

-- | The schemas for this API.
--
-- /See:/ 'restDescriptionSchemas' smart constructor.
data RestDescriptionSchemas =
    RestDescriptionSchemas
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestDescriptionSchemas' with the minimum fields required to make a request.
--
restDescriptionSchemas
    :: RestDescriptionSchemas
restDescriptionSchemas = RestDescriptionSchemas

instance FromJSON RestDescriptionSchemas where
        parseJSON
          = withObject "RestDescriptionSchemas"
              (\ o -> pure RestDescriptionSchemas)

instance ToJSON RestDescriptionSchemas where
        toJSON = const (Object mempty)

-- | The resources in this API.
--
-- /See:/ 'restDescriptionResources' smart constructor.
data RestDescriptionResources =
    RestDescriptionResources
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestDescriptionResources' with the minimum fields required to make a request.
--
restDescriptionResources
    :: RestDescriptionResources
restDescriptionResources = RestDescriptionResources

instance FromJSON RestDescriptionResources where
        parseJSON
          = withObject "RestDescriptionResources"
              (\ o -> pure RestDescriptionResources)

instance ToJSON RestDescriptionResources where
        toJSON = const (Object mempty)

-- | Supported upload protocols.
--
-- /See:/ 'restMethodMediaUploadProtocols' smart constructor.
data RestMethodMediaUploadProtocols = RestMethodMediaUploadProtocols
    { _rmmupSimple    :: !(Maybe RestMethodMediaUploadProtocolsSimple)
    , _rmmupResumable :: !(Maybe RestMethodMediaUploadProtocolsResumable)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestMethodMediaUploadProtocols' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmmupSimple'
--
-- * 'rmmupResumable'
restMethodMediaUploadProtocols
    :: RestMethodMediaUploadProtocols
restMethodMediaUploadProtocols =
    RestMethodMediaUploadProtocols
    { _rmmupSimple = Nothing
    , _rmmupResumable = Nothing
    }

-- | Supports uploading as a single HTTP request.
rmmupSimple :: Lens' RestMethodMediaUploadProtocols (Maybe RestMethodMediaUploadProtocolsSimple)
rmmupSimple
  = lens _rmmupSimple (\ s a -> s{_rmmupSimple = a})

-- | Supports the Resumable Media Upload protocol.
rmmupResumable :: Lens' RestMethodMediaUploadProtocols (Maybe RestMethodMediaUploadProtocolsResumable)
rmmupResumable
  = lens _rmmupResumable
      (\ s a -> s{_rmmupResumable = a})

instance FromJSON RestMethodMediaUploadProtocols
         where
        parseJSON
          = withObject "RestMethodMediaUploadProtocols"
              (\ o ->
                 RestMethodMediaUploadProtocols <$>
                   (o .:? "simple") <*> (o .:? "resumable"))

instance ToJSON RestMethodMediaUploadProtocols where
        toJSON RestMethodMediaUploadProtocols{..}
          = object
              (catMaybes
                 [("simple" .=) <$> _rmmupSimple,
                  ("resumable" .=) <$> _rmmupResumable])

-- | Details for all parameters in this method.
--
-- /See:/ 'restMethodParameters' smart constructor.
data RestMethodParameters =
    RestMethodParameters
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestMethodParameters' with the minimum fields required to make a request.
--
restMethodParameters
    :: RestMethodParameters
restMethodParameters = RestMethodParameters

instance FromJSON RestMethodParameters where
        parseJSON
          = withObject "RestMethodParameters"
              (\ o -> pure RestMethodParameters)

instance ToJSON RestMethodParameters where
        toJSON = const (Object mempty)

--
-- /See:/ 'directoryListItems' smart constructor.
data DirectoryListItems = DirectoryListItems
    { _dliDiscoveryLink     :: !(Maybe Text)
    , _dliPreferred         :: !(Maybe Bool)
    , _dliKind              :: !Text
    , _dliIcons             :: !(Maybe DirectoryListItemsIcons)
    , _dliName              :: !(Maybe Text)
    , _dliVersion           :: !(Maybe Text)
    , _dliDocumentationLink :: !(Maybe Text)
    , _dliId                :: !(Maybe Text)
    , _dliLabels            :: !(Maybe [Text])
    , _dliTitle             :: !(Maybe Text)
    , _dliDescription       :: !(Maybe Text)
    , _dliDiscoveryRestURL  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DirectoryListItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dliDiscoveryLink'
--
-- * 'dliPreferred'
--
-- * 'dliKind'
--
-- * 'dliIcons'
--
-- * 'dliName'
--
-- * 'dliVersion'
--
-- * 'dliDocumentationLink'
--
-- * 'dliId'
--
-- * 'dliLabels'
--
-- * 'dliTitle'
--
-- * 'dliDescription'
--
-- * 'dliDiscoveryRestURL'
directoryListItems
    :: DirectoryListItems
directoryListItems =
    DirectoryListItems
    { _dliDiscoveryLink = Nothing
    , _dliPreferred = Nothing
    , _dliKind = "discovery#directoryItem"
    , _dliIcons = Nothing
    , _dliName = Nothing
    , _dliVersion = Nothing
    , _dliDocumentationLink = Nothing
    , _dliId = Nothing
    , _dliLabels = Nothing
    , _dliTitle = Nothing
    , _dliDescription = Nothing
    , _dliDiscoveryRestURL = Nothing
    }

-- | A link to the discovery document.
dliDiscoveryLink :: Lens' DirectoryListItems (Maybe Text)
dliDiscoveryLink
  = lens _dliDiscoveryLink
      (\ s a -> s{_dliDiscoveryLink = a})

-- | True if this version is the preferred version to use.
dliPreferred :: Lens' DirectoryListItems (Maybe Bool)
dliPreferred
  = lens _dliPreferred (\ s a -> s{_dliPreferred = a})

-- | The kind for this response.
dliKind :: Lens' DirectoryListItems Text
dliKind = lens _dliKind (\ s a -> s{_dliKind = a})

-- | Links to 16x16 and 32x32 icons representing the API.
dliIcons :: Lens' DirectoryListItems (Maybe DirectoryListItemsIcons)
dliIcons = lens _dliIcons (\ s a -> s{_dliIcons = a})

-- | The name of the API.
dliName :: Lens' DirectoryListItems (Maybe Text)
dliName = lens _dliName (\ s a -> s{_dliName = a})

-- | The version of the API.
dliVersion :: Lens' DirectoryListItems (Maybe Text)
dliVersion
  = lens _dliVersion (\ s a -> s{_dliVersion = a})

-- | A link to human readable documentation for the API.
dliDocumentationLink :: Lens' DirectoryListItems (Maybe Text)
dliDocumentationLink
  = lens _dliDocumentationLink
      (\ s a -> s{_dliDocumentationLink = a})

-- | The id of this API.
dliId :: Lens' DirectoryListItems (Maybe Text)
dliId = lens _dliId (\ s a -> s{_dliId = a})

-- | Labels for the status of this API, such as labs or deprecated.
dliLabels :: Lens' DirectoryListItems [Text]
dliLabels
  = lens _dliLabels (\ s a -> s{_dliLabels = a}) .
      _Default
      . _Coerce

-- | The title of this API.
dliTitle :: Lens' DirectoryListItems (Maybe Text)
dliTitle = lens _dliTitle (\ s a -> s{_dliTitle = a})

-- | The description of this API.
dliDescription :: Lens' DirectoryListItems (Maybe Text)
dliDescription
  = lens _dliDescription
      (\ s a -> s{_dliDescription = a})

-- | The URL for the discovery REST document.
dliDiscoveryRestURL :: Lens' DirectoryListItems (Maybe Text)
dliDiscoveryRestURL
  = lens _dliDiscoveryRestURL
      (\ s a -> s{_dliDiscoveryRestURL = a})

instance FromJSON DirectoryListItems where
        parseJSON
          = withObject "DirectoryListItems"
              (\ o ->
                 DirectoryListItems <$>
                   (o .:? "discoveryLink") <*> (o .:? "preferred") <*>
                     (o .:? "kind" .!= "discovery#directoryItem")
                     <*> (o .:? "icons")
                     <*> (o .:? "name")
                     <*> (o .:? "version")
                     <*> (o .:? "documentationLink")
                     <*> (o .:? "id")
                     <*> (o .:? "labels" .!= mempty)
                     <*> (o .:? "title")
                     <*> (o .:? "description")
                     <*> (o .:? "discoveryRestUrl"))

instance ToJSON DirectoryListItems where
        toJSON DirectoryListItems{..}
          = object
              (catMaybes
                 [("discoveryLink" .=) <$> _dliDiscoveryLink,
                  ("preferred" .=) <$> _dliPreferred,
                  Just ("kind" .= _dliKind),
                  ("icons" .=) <$> _dliIcons, ("name" .=) <$> _dliName,
                  ("version" .=) <$> _dliVersion,
                  ("documentationLink" .=) <$> _dliDocumentationLink,
                  ("id" .=) <$> _dliId, ("labels" .=) <$> _dliLabels,
                  ("title" .=) <$> _dliTitle,
                  ("description" .=) <$> _dliDescription,
                  ("discoveryRestUrl" .=) <$> _dliDiscoveryRestURL])

-- | Additional information about this property.
--
-- /See:/ 'jSONSchemaAnnotations' smart constructor.
newtype JSONSchemaAnnotations = JSONSchemaAnnotations
    { _jsaRequired :: Maybe [Text]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JSONSchemaAnnotations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsaRequired'
jSONSchemaAnnotations
    :: JSONSchemaAnnotations
jSONSchemaAnnotations =
    JSONSchemaAnnotations
    { _jsaRequired = Nothing
    }

-- | A list of methods for which this property is required on requests.
jsaRequired :: Lens' JSONSchemaAnnotations [Text]
jsaRequired
  = lens _jsaRequired (\ s a -> s{_jsaRequired = a}) .
      _Default
      . _Coerce

instance FromJSON JSONSchemaAnnotations where
        parseJSON
          = withObject "JSONSchemaAnnotations"
              (\ o ->
                 JSONSchemaAnnotations <$>
                   (o .:? "required" .!= mempty))

instance ToJSON JSONSchemaAnnotations where
        toJSON JSONSchemaAnnotations{..}
          = object
              (catMaybes [("required" .=) <$> _jsaRequired])

-- | If this is a schema for an object, list the schema for each property of
-- this object.
--
-- /See:/ 'jSONSchemaProperties' smart constructor.
data JSONSchemaProperties =
    JSONSchemaProperties
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'JSONSchemaProperties' with the minimum fields required to make a request.
--
jSONSchemaProperties
    :: JSONSchemaProperties
jSONSchemaProperties = JSONSchemaProperties

instance FromJSON JSONSchemaProperties where
        parseJSON
          = withObject "JSONSchemaProperties"
              (\ o -> pure JSONSchemaProperties)

instance ToJSON JSONSchemaProperties where
        toJSON = const (Object mempty)

-- | Media upload parameters.
--
-- /See:/ 'restMethodMediaUpload' smart constructor.
data RestMethodMediaUpload = RestMethodMediaUpload
    { _rmmuProtocols :: !(Maybe RestMethodMediaUploadProtocols)
    , _rmmuAccept    :: !(Maybe [Text])
    , _rmmuMaxSize   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestMethodMediaUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmmuProtocols'
--
-- * 'rmmuAccept'
--
-- * 'rmmuMaxSize'
restMethodMediaUpload
    :: RestMethodMediaUpload
restMethodMediaUpload =
    RestMethodMediaUpload
    { _rmmuProtocols = Nothing
    , _rmmuAccept = Nothing
    , _rmmuMaxSize = Nothing
    }

-- | Supported upload protocols.
rmmuProtocols :: Lens' RestMethodMediaUpload (Maybe RestMethodMediaUploadProtocols)
rmmuProtocols
  = lens _rmmuProtocols
      (\ s a -> s{_rmmuProtocols = a})

-- | MIME Media Ranges for acceptable media uploads to this method.
rmmuAccept :: Lens' RestMethodMediaUpload [Text]
rmmuAccept
  = lens _rmmuAccept (\ s a -> s{_rmmuAccept = a}) .
      _Default
      . _Coerce

-- | Maximum size of a media upload, such as \"1MB\", \"2GB\" or \"3TB\".
rmmuMaxSize :: Lens' RestMethodMediaUpload (Maybe Text)
rmmuMaxSize
  = lens _rmmuMaxSize (\ s a -> s{_rmmuMaxSize = a})

instance FromJSON RestMethodMediaUpload where
        parseJSON
          = withObject "RestMethodMediaUpload"
              (\ o ->
                 RestMethodMediaUpload <$>
                   (o .:? "protocols") <*> (o .:? "accept" .!= mempty)
                     <*> (o .:? "maxSize"))

instance ToJSON RestMethodMediaUpload where
        toJSON RestMethodMediaUpload{..}
          = object
              (catMaybes
                 [("protocols" .=) <$> _rmmuProtocols,
                  ("accept" .=) <$> _rmmuAccept,
                  ("maxSize" .=) <$> _rmmuMaxSize])

--
-- /See:/ 'directoryList' smart constructor.
data DirectoryList = DirectoryList
    { _dlKind             :: !Text
    , _dlItems            :: !(Maybe [DirectoryListItems])
    , _dlDiscoveryVersion :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DirectoryList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlKind'
--
-- * 'dlItems'
--
-- * 'dlDiscoveryVersion'
directoryList
    :: DirectoryList
directoryList =
    DirectoryList
    { _dlKind = "discovery#directoryList"
    , _dlItems = Nothing
    , _dlDiscoveryVersion = "v1"
    }

-- | The kind for this response.
dlKind :: Lens' DirectoryList Text
dlKind = lens _dlKind (\ s a -> s{_dlKind = a})

-- | The individual directory entries. One entry per api\/version pair.
dlItems :: Lens' DirectoryList [DirectoryListItems]
dlItems
  = lens _dlItems (\ s a -> s{_dlItems = a}) . _Default
      . _Coerce

-- | Indicate the version of the Discovery API used to generate this doc.
dlDiscoveryVersion :: Lens' DirectoryList Text
dlDiscoveryVersion
  = lens _dlDiscoveryVersion
      (\ s a -> s{_dlDiscoveryVersion = a})

instance FromJSON DirectoryList where
        parseJSON
          = withObject "DirectoryList"
              (\ o ->
                 DirectoryList <$>
                   (o .:? "kind" .!= "discovery#directoryList") <*>
                     (o .:? "items" .!= mempty)
                     <*> (o .:? "discoveryVersion" .!= "v1"))

instance ToJSON DirectoryList where
        toJSON DirectoryList{..}
          = object
              (catMaybes
                 [Just ("kind" .= _dlKind), ("items" .=) <$> _dlItems,
                  Just ("discoveryVersion" .= _dlDiscoveryVersion)])

-- | Supports the Resumable Media Upload protocol.
--
-- /See:/ 'restMethodMediaUploadProtocolsResumable' smart constructor.
data RestMethodMediaUploadProtocolsResumable = RestMethodMediaUploadProtocolsResumable
    { _rmmuprPath       :: !(Maybe Text)
    , _rmmuprMultiParty :: !Bool
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestMethodMediaUploadProtocolsResumable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmmuprPath'
--
-- * 'rmmuprMultiParty'
restMethodMediaUploadProtocolsResumable
    :: RestMethodMediaUploadProtocolsResumable
restMethodMediaUploadProtocolsResumable =
    RestMethodMediaUploadProtocolsResumable
    { _rmmuprPath = Nothing
    , _rmmuprMultiParty = True
    }

-- | The URI path to be used for upload. Should be used in conjunction with
-- the basePath property at the api-level.
rmmuprPath :: Lens' RestMethodMediaUploadProtocolsResumable (Maybe Text)
rmmuprPath
  = lens _rmmuprPath (\ s a -> s{_rmmuprPath = a})

-- | True if this endpoint supports uploading multipart media.
rmmuprMultiParty :: Lens' RestMethodMediaUploadProtocolsResumable Bool
rmmuprMultiParty
  = lens _rmmuprMultiParty
      (\ s a -> s{_rmmuprMultiParty = a})

instance FromJSON
         RestMethodMediaUploadProtocolsResumable where
        parseJSON
          = withObject
              "RestMethodMediaUploadProtocolsResumable"
              (\ o ->
                 RestMethodMediaUploadProtocolsResumable <$>
                   (o .:? "path") <*> (o .:? "multipart" .!= True))

instance ToJSON
         RestMethodMediaUploadProtocolsResumable where
        toJSON RestMethodMediaUploadProtocolsResumable{..}
          = object
              (catMaybes
                 [("path" .=) <$> _rmmuprPath,
                  Just ("multipart" .= _rmmuprMultiParty)])

-- | The schema for the request.
--
-- /See:/ 'restMethodRequest' smart constructor.
data RestMethodRequest = RestMethodRequest
    { _rRef           :: !(Maybe Text)
    , _rParameterName :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RestMethodRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rRef'
--
-- * 'rParameterName'
restMethodRequest
    :: RestMethodRequest
restMethodRequest =
    RestMethodRequest
    { _rRef = Nothing
    , _rParameterName = Nothing
    }

-- | Schema ID for the request schema.
rRef :: Lens' RestMethodRequest (Maybe Text)
rRef = lens _rRef (\ s a -> s{_rRef = a})

-- | parameter name.
rParameterName :: Lens' RestMethodRequest (Maybe Text)
rParameterName
  = lens _rParameterName
      (\ s a -> s{_rParameterName = a})

instance FromJSON RestMethodRequest where
        parseJSON
          = withObject "RestMethodRequest"
              (\ o ->
                 RestMethodRequest <$>
                   (o .:? "$ref") <*> (o .:? "parameterName"))

instance ToJSON RestMethodRequest where
        toJSON RestMethodRequest{..}
          = object
              (catMaybes
                 [("$ref" .=) <$> _rRef,
                  ("parameterName" .=) <$> _rParameterName])
