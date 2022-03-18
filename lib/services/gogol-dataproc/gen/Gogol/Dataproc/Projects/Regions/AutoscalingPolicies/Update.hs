{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Dataproc.Projects.Regions.AutoscalingPolicies.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates (replaces) autoscaling policy.Disabled check for update_mask, because all updates will be full replacements.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.autoscalingPolicies.update@.
module Gogol.Dataproc.Projects.Regions.AutoscalingPolicies.Update
    (
    -- * Resource
      DataprocProjectsRegionsAutoscalingPoliciesUpdateResource

    -- ** Constructing a Request
    , newDataprocProjectsRegionsAutoscalingPoliciesUpdate
    , DataprocProjectsRegionsAutoscalingPoliciesUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataproc.Types

-- | A resource alias for @dataproc.projects.regions.autoscalingPolicies.update@ method which the
-- 'DataprocProjectsRegionsAutoscalingPoliciesUpdate' request conforms to.
type DataprocProjectsRegionsAutoscalingPoliciesUpdateResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] AutoscalingPolicy Core.:>
                       Core.Put '[Core.JSON] AutoscalingPolicy

-- | Updates (replaces) autoscaling policy.Disabled check for update_mask, because all updates will be full replacements.
--
-- /See:/ 'newDataprocProjectsRegionsAutoscalingPoliciesUpdate' smart constructor.
data DataprocProjectsRegionsAutoscalingPoliciesUpdate = DataprocProjectsRegionsAutoscalingPoliciesUpdate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Output only. The \"resource name\" of the autoscaling policy, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.autoscalingPolicies, the resource name of the policy has the following format: projects\/{project/id}\/regions\/{region}\/autoscalingPolicies\/{policy/id} For projects.locations.autoscalingPolicies, the resource name of the policy has the following format: projects\/{project/id}\/locations\/{location}\/autoscalingPolicies\/{policy_id}
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: AutoscalingPolicy
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsRegionsAutoscalingPoliciesUpdate' with the minimum fields required to make a request.
newDataprocProjectsRegionsAutoscalingPoliciesUpdate 
    ::  Core.Text
       -- ^  Output only. The \"resource name\" of the autoscaling policy, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.autoscalingPolicies, the resource name of the policy has the following format: projects\/{project/id}\/regions\/{region}\/autoscalingPolicies\/{policy/id} For projects.locations.autoscalingPolicies, the resource name of the policy has the following format: projects\/{project/id}\/locations\/{location}\/autoscalingPolicies\/{policy_id} See 'name'.
    -> AutoscalingPolicy
       -- ^  Multipart request metadata. See 'payload'.
    -> DataprocProjectsRegionsAutoscalingPoliciesUpdate
newDataprocProjectsRegionsAutoscalingPoliciesUpdate name payload =
  DataprocProjectsRegionsAutoscalingPoliciesUpdate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataprocProjectsRegionsAutoscalingPoliciesUpdate
         where
        type Rs
               DataprocProjectsRegionsAutoscalingPoliciesUpdate
             = AutoscalingPolicy
        type Scopes
               DataprocProjectsRegionsAutoscalingPoliciesUpdate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          DataprocProjectsRegionsAutoscalingPoliciesUpdate{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dataprocService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataprocProjectsRegionsAutoscalingPoliciesUpdateResource)
                      Core.mempty

