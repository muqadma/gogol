{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.SearchConsole.Webmasters.Sites.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the user\'s Search Console sites.
--
-- /See:/ <https://developers.google.com/webmaster-tools/search-console-api/ Google Search Console API Reference> for @webmasters.sites.list@.
module Network.Google.SearchConsole.Webmasters.Sites.List
  ( -- * Resource
    WebmastersSitesListResource,

    -- ** Constructing a Request
    newWebmastersSitesList,
    WebmastersSitesList,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.SearchConsole.Types

-- | A resource alias for @webmasters.sites.list@ method which the
-- 'WebmastersSitesList' request conforms to.
type WebmastersSitesListResource =
  "webmasters"
    Core.:> "v3"
    Core.:> "sites"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SitesListResponse

-- | Lists the user\'s Search Console sites.
--
-- /See:/ 'newWebmastersSitesList' smart constructor.
data WebmastersSitesList = WebmastersSitesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebmastersSitesList' with the minimum fields required to make a request.
newWebmastersSitesList ::
  WebmastersSitesList
newWebmastersSitesList =
  WebmastersSitesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest WebmastersSitesList where
  type Rs WebmastersSitesList = SitesListResponse
  type
    Scopes WebmastersSitesList =
      '[ "https://www.googleapis.com/auth/webmasters",
         "https://www.googleapis.com/auth/webmasters.readonly"
       ]
  requestClient WebmastersSitesList {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      searchConsoleService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy WebmastersSitesListResource
          )
          Core.mempty
