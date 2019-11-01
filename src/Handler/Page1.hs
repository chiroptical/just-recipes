{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE QuasiQuotes #-}

module Handler.Page1 where

import Import

getPage1R :: Handler Html
getPage1R = defaultLayout [whamlet|<a href=@{Page2R}>Go to page 2!|]
