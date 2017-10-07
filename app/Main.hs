{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE QuasiQuotes           #-}
{-# LANGUAGE TemplateHaskell       #-}
{-# LANGUAGE TypeFamilies          #-}

module Main where

import           Yesod

data HelloWorld = HelloWorld

mkYesod "HelloWorld" [parseRoutes|/hw HomeR GET |]

instance Yesod HelloWorld

getHomeR :: Handler Html
getHomeR = defaultLayout [whamlet|Hello World4!|]

main :: IO ()
main = warp 3001 HelloWorld
