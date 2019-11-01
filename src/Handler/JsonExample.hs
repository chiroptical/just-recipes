{-# LANGUAGE ExtendedDefaultRules #-}
-- {-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
-- {-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE QuasiQuotes #-}

module Handler.JsonExample where

import Import

getJsonExampleR :: HandlerFor App Value
getJsonExampleR = return $ object ["msg" .= "Hello World"]
