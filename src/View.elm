module View exposing(..)
import Styles exposing (..)
import Msg exposing(..)
import Html exposing (..)
import Html.Events exposing (onClick, onInput)
import Models exposing(..)
import Html.Attributes exposing(..)
import Components.MoviePortrait exposing (..)
import Components.PreferencesModal exposing (..)
import Components.Navbar exposing (..)
import Bootstrap.CDN as CDN
import Bootstrap.Grid as Grid
import Bootstrap.Button as Button
import Bootstrap.ButtonGroup as ButtonGroup
import Bootstrap.Utilities.Spacing as Spacing


view : Model -> Html Msg
view model =
  div []  [
    CDN.stylesheet,
    navbar,
    preferencesModal model,
    Grid.container [] [
      br [] [],
      Grid.row [] [
        Grid.col [] [
          ButtonGroup.buttonGroup  []
          [    
            ButtonGroup.button [ Button.success , Button.attrs [onClick OrderByRating]] [ text "Order" ],
            ButtonGroup.button [ Button.success , Button.attrs [onClick Reset]] [ text "Reset" ],
            ButtonGroup.button [ Button.success, Button.attrs [ onClick ShowDialog ] ] [ text "Preferences" ]
          ]
          
          ]
      ],
          br [] [],
      Grid.row [](moviePortraites model)
    ]

  ]
                
