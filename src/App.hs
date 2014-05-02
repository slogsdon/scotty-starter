{-# LANGUAGE OverloadedStrings    #-}
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

module App (app) where

-- Third Party
import          Web.Scotty hiding (body)

-- Application
import          Controllers.Home

app :: ScottyM ()
app = do
    get "/" $ Controllers.Home.home