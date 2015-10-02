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
-- Module      : Network.Google.Resource.Taskqueue.Tasks.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update tasks that are leased out of a TaskQueue.
--
-- /See:/ <https://developers.google.com/appengine/docs/python/taskqueue/rest TaskQueue API Reference> for @TaskqueueTasksUpdate@.
module Network.Google.Resource.Taskqueue.Tasks.Update
    (
    -- * REST Resource
      TasksUpdateResource

    -- * Creating a Request
    , tasksUpdate'
    , TasksUpdate'

    -- * Request Lenses
    , tuTaskqueue
    , tuQuotaUser
    , tuPrettyPrint
    , tuProject
    , tuUserIP
    , tuKey
    , tuTask
    , tuTask
    , tuOAuthToken
    , tuNewLeaseSeconds
    , tuFields
    ) where

import           Network.Google.AppEngineTaskQueue.Types
import           Network.Google.Prelude

-- | A resource alias for @TaskqueueTasksUpdate@ which the
-- 'TasksUpdate'' request conforms to.
type TasksUpdateResource =
     Capture "project" Text :>
       "taskqueues" :>
         Capture "taskqueue" Text :>
           "tasks" :>
             Capture "task" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "newLeaseSeconds" Int32 :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Task :> Post '[JSON] Task

-- | Update tasks that are leased out of a TaskQueue.
--
-- /See:/ 'tasksUpdate'' smart constructor.
data TasksUpdate' = TasksUpdate'
    { _tuTaskqueue       :: !Text
    , _tuQuotaUser       :: !(Maybe Text)
    , _tuPrettyPrint     :: !Bool
    , _tuProject         :: !Text
    , _tuUserIP          :: !(Maybe Text)
    , _tuKey             :: !(Maybe Key)
    , _tuTask            :: !Task
    , _tuTask            :: !Text
    , _tuOAuthToken      :: !(Maybe OAuthToken)
    , _tuNewLeaseSeconds :: !Int32
    , _tuFields          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tuTaskqueue'
--
-- * 'tuQuotaUser'
--
-- * 'tuPrettyPrint'
--
-- * 'tuProject'
--
-- * 'tuUserIP'
--
-- * 'tuKey'
--
-- * 'tuTask'
--
-- * 'tuTask'
--
-- * 'tuOAuthToken'
--
-- * 'tuNewLeaseSeconds'
--
-- * 'tuFields'
tasksUpdate'
    :: Text -- ^ 'taskqueue'
    -> Text -- ^ 'project'
    -> Task -- ^ 'Task'
    -> Text -- ^ 'task'
    -> Int32 -- ^ 'newLeaseSeconds'
    -> TasksUpdate'
tasksUpdate' pTuTaskqueue_ pTuProject_ pTuTask_ pTuTask_ pTuNewLeaseSeconds_ =
    TasksUpdate'
    { _tuTaskqueue = pTuTaskqueue_
    , _tuQuotaUser = Nothing
    , _tuPrettyPrint = True
    , _tuProject = pTuProject_
    , _tuUserIP = Nothing
    , _tuKey = Nothing
    , _tuTask = pTuTask_
    , _tuTask = pTuTask_
    , _tuOAuthToken = Nothing
    , _tuNewLeaseSeconds = pTuNewLeaseSeconds_
    , _tuFields = Nothing
    }

tuTaskqueue :: Lens' TasksUpdate' Text
tuTaskqueue
  = lens _tuTaskqueue (\ s a -> s{_tuTaskqueue = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tuQuotaUser :: Lens' TasksUpdate' (Maybe Text)
tuQuotaUser
  = lens _tuQuotaUser (\ s a -> s{_tuQuotaUser = a})

-- | Returns response with indentations and line breaks.
tuPrettyPrint :: Lens' TasksUpdate' Bool
tuPrettyPrint
  = lens _tuPrettyPrint
      (\ s a -> s{_tuPrettyPrint = a})

-- | The project under which the queue lies.
tuProject :: Lens' TasksUpdate' Text
tuProject
  = lens _tuProject (\ s a -> s{_tuProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tuUserIP :: Lens' TasksUpdate' (Maybe Text)
tuUserIP = lens _tuUserIP (\ s a -> s{_tuUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tuKey :: Lens' TasksUpdate' (Maybe Key)
tuKey = lens _tuKey (\ s a -> s{_tuKey = a})

-- | Multipart request metadata.
tuTask :: Lens' TasksUpdate' Task
tuTask = lens _tuTask (\ s a -> s{_tuTask = a})

tuTask :: Lens' TasksUpdate' Text
tuTask = lens _tuTask (\ s a -> s{_tuTask = a})

-- | OAuth 2.0 token for the current user.
tuOAuthToken :: Lens' TasksUpdate' (Maybe OAuthToken)
tuOAuthToken
  = lens _tuOAuthToken (\ s a -> s{_tuOAuthToken = a})

-- | The new lease in seconds.
tuNewLeaseSeconds :: Lens' TasksUpdate' Int32
tuNewLeaseSeconds
  = lens _tuNewLeaseSeconds
      (\ s a -> s{_tuNewLeaseSeconds = a})

-- | Selector specifying which fields to include in a partial response.
tuFields :: Lens' TasksUpdate' (Maybe Text)
tuFields = lens _tuFields (\ s a -> s{_tuFields = a})

instance GoogleAuth TasksUpdate' where
        authKey = tuKey . _Just
        authToken = tuOAuthToken . _Just

instance GoogleRequest TasksUpdate' where
        type Rs TasksUpdate' = Task
        request
          = requestWithRoute defReq appEngineTaskQueueURL
        requestWithRoute r u TasksUpdate'{..}
          = go _tuTaskqueue _tuQuotaUser (Just _tuPrettyPrint)
              _tuProject
              _tuUserIP
              _tuKey
              _tuTask
              _tuOAuthToken
              (Just _tuNewLeaseSeconds)
              _tuFields
              (Just AltJSON)
              _tuTask
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TasksUpdateResource)
                      r
                      u
