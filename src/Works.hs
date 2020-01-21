{-# language GADTs #-}
{-# language GeneralizedNewtypeDeriving #-}
{-# language QuasiQuotes #-}
{-# language TemplateHaskell #-}
{-# language TypeFamilies #-}

{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE UndecidableInstances #-}

module Works where

import Database.Persist.TH ( sqlSettings )
import Settings ( settings )
import Yesod.Persist ( share, mkPersist, persistUpperCase )

share [mkPersist sqlSettings] [persistUpperCase|
Foo
  Id Int
|]