{-# LANGUAGE OverloadedStrings #-}
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

module Client.CSS (layoutCss) where

-- Standard Library
import           Data.Text.Lazy (Text)

-- Third Party
import           Clay

layoutCss :: Text
layoutCss = render $ do
  body ? minHeight (px 2000)
  element ".jumbotron" ? (textAlign $ alignSide sideCenter)
  element "#gmail" ? (marginLeft $ px 10)




