{-# LANGUAGE OverloadedStrings #-}

module Controllers.HomeSpec ( spec ) where

import qualified Data.ByteString.Lazy as LBS

import           Helper

spec :: Spec
spec = do
    describe "GET /" $ do
      it "should contain 'Scotty Starter' in response body" $ do
        app <- getApp
        body <- getBody <$> app `get` ""
        body `shouldSatisfy` \x -> any (LBS.isPrefixOf "Scotty Starter") $ LBS.tails x