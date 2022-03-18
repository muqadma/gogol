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
-- Module      : Gogol.AdSenseHost.Accounts.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List hosted accounts associated with this AdSense account by ad client id.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.accounts.list@.
module Gogol.AdSenseHost.Accounts.List
    (
    -- * Resource
      AdSenseHostAccountsListResource

    -- ** Constructing a Request
    , newAdSenseHostAccountsList
    , AdSenseHostAccountsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AdSenseHost.Types

-- | A resource alias for @adsensehost.accounts.list@ method which the
-- 'AdSenseHostAccountsList' request conforms to.
type AdSenseHostAccountsListResource =
     "adsensehost" Core.:>
       "v4.1" Core.:>
         "accounts" Core.:>
           Core.QueryParams "filterAdClientId" Core.Text Core.:>
             Core.QueryParam "alt" Core.AltJSON Core.:>
               Core.Get '[Core.JSON] Accounts

-- | List hosted accounts associated with this AdSense account by ad client id.
--
-- /See:/ 'newAdSenseHostAccountsList' smart constructor.
newtype AdSenseHostAccountsList = AdSenseHostAccountsList
    {
      -- | Ad clients to list accounts for.
      filterAdClientId :: [Core.Text]
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdSenseHostAccountsList' with the minimum fields required to make a request.
newAdSenseHostAccountsList 
    ::  [Core.Text]
       -- ^  Ad clients to list accounts for. See 'filterAdClientId'.
    -> AdSenseHostAccountsList
newAdSenseHostAccountsList filterAdClientId =
  AdSenseHostAccountsList {filterAdClientId = filterAdClientId}

instance Core.GoogleRequest AdSenseHostAccountsList
         where
        type Rs AdSenseHostAccountsList = Accounts
        type Scopes AdSenseHostAccountsList =
             '["https://www.googleapis.com/auth/adsensehost"]
        requestClient AdSenseHostAccountsList{..}
          = go filterAdClientId (Core.Just Core.AltJSON)
              adSenseHostService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AdSenseHostAccountsListResource)
                      Core.mempty

