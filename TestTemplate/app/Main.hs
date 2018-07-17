{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module Main where

import Data.Aeson
import Data.Text.Lazy (toStrict)
import GHC.Generics
import Text.EDE
import Web.Spock

data Todo = Todo
    { title :: String
    , done  :: Bool
    } deriving Generic

instance ToJSON Todo

todos :: [Todo]
todos = [ Todo "買い物に行く" False
        , Todo "ゲームをする" True
        , Todo "Haskellを書く" True
        ]

main :: IO ()
main = do
    tpl <- eitherParseFile "index.html"
    let env  = fromPairs [ "title" .= ("TODOリスト" :: Value)
                         , "todos" .= toJSON todos ]
        body = either error toStrict $ tpl >>= (`eitherRender` env)
    runSpock 3000 . spockT id $ do
        get "/" $ html body
