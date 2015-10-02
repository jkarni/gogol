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
-- Module      : Network.Google.Resource.Prediction.TrainedModels.Predict
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Submit model id and request a prediction.
--
-- /See:/ <https://developers.google.com/prediction/docs/developer-guide Prediction API Reference> for @PredictionTrainedModelsPredict@.
module Network.Google.Resource.Prediction.TrainedModels.Predict
    (
    -- * REST Resource
      TrainedModelsPredictResource

    -- * Creating a Request
    , trainedModelsPredict'
    , TrainedModelsPredict'

    -- * Request Lenses
    , tmpQuotaUser
    , tmpPrettyPrint
    , tmpProject
    , tmpUserIP
    , tmpInput
    , tmpKey
    , tmpId
    , tmpOAuthToken
    , tmpFields
    ) where

import           Network.Google.Prediction.Types
import           Network.Google.Prelude

-- | A resource alias for @PredictionTrainedModelsPredict@ which the
-- 'TrainedModelsPredict'' request conforms to.
type TrainedModelsPredictResource =
     Capture "project" Text :>
       "trainedmodels" :>
         Capture "id" Text :>
           "predict" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Input :> Post '[JSON] Output

-- | Submit model id and request a prediction.
--
-- /See:/ 'trainedModelsPredict'' smart constructor.
data TrainedModelsPredict' = TrainedModelsPredict'
    { _tmpQuotaUser   :: !(Maybe Text)
    , _tmpPrettyPrint :: !Bool
    , _tmpProject     :: !Text
    , _tmpUserIP      :: !(Maybe Text)
    , _tmpInput       :: !Input
    , _tmpKey         :: !(Maybe Key)
    , _tmpId          :: !Text
    , _tmpOAuthToken  :: !(Maybe OAuthToken)
    , _tmpFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TrainedModelsPredict'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tmpQuotaUser'
--
-- * 'tmpPrettyPrint'
--
-- * 'tmpProject'
--
-- * 'tmpUserIP'
--
-- * 'tmpInput'
--
-- * 'tmpKey'
--
-- * 'tmpId'
--
-- * 'tmpOAuthToken'
--
-- * 'tmpFields'
trainedModelsPredict'
    :: Text -- ^ 'project'
    -> Input -- ^ 'Input'
    -> Text -- ^ 'id'
    -> TrainedModelsPredict'
trainedModelsPredict' pTmpProject_ pTmpInput_ pTmpId_ =
    TrainedModelsPredict'
    { _tmpQuotaUser = Nothing
    , _tmpPrettyPrint = True
    , _tmpProject = pTmpProject_
    , _tmpUserIP = Nothing
    , _tmpInput = pTmpInput_
    , _tmpKey = Nothing
    , _tmpId = pTmpId_
    , _tmpOAuthToken = Nothing
    , _tmpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tmpQuotaUser :: Lens' TrainedModelsPredict' (Maybe Text)
tmpQuotaUser
  = lens _tmpQuotaUser (\ s a -> s{_tmpQuotaUser = a})

-- | Returns response with indentations and line breaks.
tmpPrettyPrint :: Lens' TrainedModelsPredict' Bool
tmpPrettyPrint
  = lens _tmpPrettyPrint
      (\ s a -> s{_tmpPrettyPrint = a})

-- | The project associated with the model.
tmpProject :: Lens' TrainedModelsPredict' Text
tmpProject
  = lens _tmpProject (\ s a -> s{_tmpProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tmpUserIP :: Lens' TrainedModelsPredict' (Maybe Text)
tmpUserIP
  = lens _tmpUserIP (\ s a -> s{_tmpUserIP = a})

-- | Multipart request metadata.
tmpInput :: Lens' TrainedModelsPredict' Input
tmpInput = lens _tmpInput (\ s a -> s{_tmpInput = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tmpKey :: Lens' TrainedModelsPredict' (Maybe Key)
tmpKey = lens _tmpKey (\ s a -> s{_tmpKey = a})

-- | The unique name for the predictive model.
tmpId :: Lens' TrainedModelsPredict' Text
tmpId = lens _tmpId (\ s a -> s{_tmpId = a})

-- | OAuth 2.0 token for the current user.
tmpOAuthToken :: Lens' TrainedModelsPredict' (Maybe OAuthToken)
tmpOAuthToken
  = lens _tmpOAuthToken
      (\ s a -> s{_tmpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tmpFields :: Lens' TrainedModelsPredict' (Maybe Text)
tmpFields
  = lens _tmpFields (\ s a -> s{_tmpFields = a})

instance GoogleAuth TrainedModelsPredict' where
        authKey = tmpKey . _Just
        authToken = tmpOAuthToken . _Just

instance GoogleRequest TrainedModelsPredict' where
        type Rs TrainedModelsPredict' = Output
        request = requestWithRoute defReq predictionURL
        requestWithRoute r u TrainedModelsPredict'{..}
          = go _tmpQuotaUser (Just _tmpPrettyPrint) _tmpProject
              _tmpUserIP
              _tmpKey
              _tmpId
              _tmpOAuthToken
              _tmpFields
              (Just AltJSON)
              _tmpInput
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TrainedModelsPredictResource)
                      r
                      u
