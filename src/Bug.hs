{-# language GADTs #-}
{-# language GeneralizedNewtypeDeriving #-}
{-# language QuasiQuotes #-}
{-# language TemplateHaskell #-}
{-# language TypeFamilies #-}

{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE UndecidableInstances #-}

module Bug where

import Settings ( settings )
import Yesod.Persist ( share, mkPersist, persistUpperCase )

share [mkPersist settings] [persistUpperCase|
Foo
  Id Int
|]