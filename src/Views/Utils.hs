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

module Views.Utils (blaze, pet) where

-- Standard Library
import           Data.Text.Internal            (Text)

-- Third Party
import           Text.Blaze.Html.Renderer.Text (renderHtml)
import           Text.Blaze.Html5              (Html)
import           Text.Blaze.Internal           (Markup, preEscapedText)
import           Web.Scotty                    (ActionM, html)

pet :: Data.Text.Internal.Text -> Text.Blaze.Internal.Markup
pet = preEscapedText

blaze :: Html -> ActionM ()
blaze = html . renderHtml

