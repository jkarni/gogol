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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.Resize
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resizes the managed instance group. If you increase the size, the group
-- creates new instances using the current instance template. If you
-- decrease the size, the group removes instances in the order that is
-- outlined in Resizing a managed instance group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupManagersResize@.
module Network.Google.Resource.Compute.InstanceGroupManagers.Resize
    (
    -- * REST Resource
      InstanceGroupManagersResizeResource

    -- * Creating a Request
    , instanceGroupManagersResize'
    , InstanceGroupManagersResize'

    -- * Request Lenses
    , igmrQuotaUser
    , igmrPrettyPrint
    , igmrProject
    , igmrSize
    , igmrInstanceGroupManager
    , igmrUserIP
    , igmrZone
    , igmrKey
    , igmrOAuthToken
    , igmrFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupManagersResize@ which the
-- 'InstanceGroupManagersResize'' request conforms to.
type InstanceGroupManagersResizeResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroupManagers" :>
             Capture "instanceGroupManager" Text :>
               "resize" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "size" Int32 :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" AltJSON :>
                                 Post '[JSON] Operation

-- | Resizes the managed instance group. If you increase the size, the group
-- creates new instances using the current instance template. If you
-- decrease the size, the group removes instances in the order that is
-- outlined in Resizing a managed instance group.
--
-- /See:/ 'instanceGroupManagersResize'' smart constructor.
data InstanceGroupManagersResize' = InstanceGroupManagersResize'
    { _igmrQuotaUser            :: !(Maybe Text)
    , _igmrPrettyPrint          :: !Bool
    , _igmrProject              :: !Text
    , _igmrSize                 :: !Int32
    , _igmrInstanceGroupManager :: !Text
    , _igmrUserIP               :: !(Maybe Text)
    , _igmrZone                 :: !Text
    , _igmrKey                  :: !(Maybe Key)
    , _igmrOAuthToken           :: !(Maybe OAuthToken)
    , _igmrFields               :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersResize'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmrQuotaUser'
--
-- * 'igmrPrettyPrint'
--
-- * 'igmrProject'
--
-- * 'igmrSize'
--
-- * 'igmrInstanceGroupManager'
--
-- * 'igmrUserIP'
--
-- * 'igmrZone'
--
-- * 'igmrKey'
--
-- * 'igmrOAuthToken'
--
-- * 'igmrFields'
instanceGroupManagersResize'
    :: Text -- ^ 'project'
    -> Int32 -- ^ 'size'
    -> Text -- ^ 'instanceGroupManager'
    -> Text -- ^ 'zone'
    -> InstanceGroupManagersResize'
instanceGroupManagersResize' pIgmrProject_ pIgmrSize_ pIgmrInstanceGroupManager_ pIgmrZone_ =
    InstanceGroupManagersResize'
    { _igmrQuotaUser = Nothing
    , _igmrPrettyPrint = True
    , _igmrProject = pIgmrProject_
    , _igmrSize = pIgmrSize_
    , _igmrInstanceGroupManager = pIgmrInstanceGroupManager_
    , _igmrUserIP = Nothing
    , _igmrZone = pIgmrZone_
    , _igmrKey = Nothing
    , _igmrOAuthToken = Nothing
    , _igmrFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igmrQuotaUser :: Lens' InstanceGroupManagersResize' (Maybe Text)
igmrQuotaUser
  = lens _igmrQuotaUser
      (\ s a -> s{_igmrQuotaUser = a})

-- | Returns response with indentations and line breaks.
igmrPrettyPrint :: Lens' InstanceGroupManagersResize' Bool
igmrPrettyPrint
  = lens _igmrPrettyPrint
      (\ s a -> s{_igmrPrettyPrint = a})

-- | The project ID for this request.
igmrProject :: Lens' InstanceGroupManagersResize' Text
igmrProject
  = lens _igmrProject (\ s a -> s{_igmrProject = a})

-- | The number of running instances that the managed instance group should
-- maintain at any given time. The group automatically adds or removes
-- instances to maintain the number of instances specified by this
-- parameter.
igmrSize :: Lens' InstanceGroupManagersResize' Int32
igmrSize = lens _igmrSize (\ s a -> s{_igmrSize = a})

-- | The name of the instance group manager.
igmrInstanceGroupManager :: Lens' InstanceGroupManagersResize' Text
igmrInstanceGroupManager
  = lens _igmrInstanceGroupManager
      (\ s a -> s{_igmrInstanceGroupManager = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igmrUserIP :: Lens' InstanceGroupManagersResize' (Maybe Text)
igmrUserIP
  = lens _igmrUserIP (\ s a -> s{_igmrUserIP = a})

-- | The URL of the zone where the managed instance group is located.
igmrZone :: Lens' InstanceGroupManagersResize' Text
igmrZone = lens _igmrZone (\ s a -> s{_igmrZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igmrKey :: Lens' InstanceGroupManagersResize' (Maybe Key)
igmrKey = lens _igmrKey (\ s a -> s{_igmrKey = a})

-- | OAuth 2.0 token for the current user.
igmrOAuthToken :: Lens' InstanceGroupManagersResize' (Maybe OAuthToken)
igmrOAuthToken
  = lens _igmrOAuthToken
      (\ s a -> s{_igmrOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
igmrFields :: Lens' InstanceGroupManagersResize' (Maybe Text)
igmrFields
  = lens _igmrFields (\ s a -> s{_igmrFields = a})

instance GoogleAuth InstanceGroupManagersResize'
         where
        authKey = igmrKey . _Just
        authToken = igmrOAuthToken . _Just

instance GoogleRequest InstanceGroupManagersResize'
         where
        type Rs InstanceGroupManagersResize' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstanceGroupManagersResize'{..}
          = go _igmrQuotaUser (Just _igmrPrettyPrint)
              _igmrProject
              (Just _igmrSize)
              _igmrInstanceGroupManager
              _igmrUserIP
              _igmrZone
              _igmrKey
              _igmrOAuthToken
              _igmrFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstanceGroupManagersResizeResource)
                      r
                      u
