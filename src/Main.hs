{- |
Module      :  <File name or $Header$ to be replaced automatically>
Description :  <optional short text displayed on contents page>
Copyright   :  (c) <Authors or Affiliations>
License     :  <license>

Maintainer  :  <email>
Stability   :  unstable | experimental | provisional | stable | frozen
Portability :  portable | non-portable (<reason>)

<module description starting at first column>
-}

module Main where

-- Standard Library
import           Control.Applicative                  ((<$>))
import           System.Environment                   (getEnv)

-- Third Party
import           Network.Wai.Middleware.RequestLogger (logStdoutDev)
import           Network.Wai.Middleware.Static        (addBase, noDots,
                                                       staticPolicy, (>->))
import           Web.Scotty                           (middleware, scotty)

-- Application
import           App                                  (app)

main :: IO ()
main = do
  port <- read <$> getEnv "PORT"
  scotty port $ do
         middleware $ staticPolicy (noDots >-> addBase "src/static/images") -- for favicon.ico
         middleware logStdoutDev
         App.app
