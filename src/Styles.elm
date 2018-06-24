module Styles exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

modal =
  style
    [ ("background-color", "#FFFFE0")
    , ("margin", "auto")
    , ("align-items", "center") ]

poster =
  style
    [ ("height", "400px")
    , ("width", "250px")
    , ("margin-bottom", "10px") ]

title =
  style
    [ ("font-size", "30px")
    , ("margin-bottom", "5px")]

likeButton =
  style
    [ ("margin-top", "5px"),
    ("text-align", "center")
    ]

navbarText =
  style
  [("color", "white")]

portrait =
  style
  [("margin","auto"),
  ("width", "250px")
  ]
