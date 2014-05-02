{-# LANGUAGE OverloadedStrings #-}

module Views.UtilsSpec ( spec ) where

import           Helper

spec :: Spec
spec = do
    describe "method" $ do
      it "should do something" $ do
        False `shouldBe` (True :: Bool)