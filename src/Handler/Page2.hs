{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE QuasiQuotes #-}

module Handler.Page2 where

import Import

getPage2R :: Handler Html
getPage2R = defaultLayout [whamlet|<a href=@{Page1R}>Go to page 1!|]
