module Components.PreferencesModal exposing (..)
import Html exposing (..)
import Dialog exposing (..)
import Models exposing (..)
import Msg exposing(..)
import Styles exposing (..)
import Html.Events exposing (onClick, onInput)
import Html.Attributes exposing(..)
import Bootstrap.Form as Form
import Bootstrap.Form.Input as Input
import Bootstrap.Button as Button

preferencesModal : Model -> Html Msg
preferencesModal model = 
  div
    []
    [ Dialog.view
        (if model.shouldShowDialog then
          Just { closeMessage = Just HideDialog
               , containerClass = Just "your-container-class"
               , header = Just (text "")
               , body = Just ( div [Styles.modal] [
                        h4 [] [ text "Preferences" ],
                        Form.group [] [
                          Form.label [for "keywords"] [text "Keywords: "],
                          Input.text [Input.id "keywords", Input.attrs [placeholder "Enter your keywords separated with a space",
                          onInput UpdatePreferencesKeywords]]
                        ],
                        Form.group [] [
                          Form.label [for "genre"] [text "Genre: "],
                          Input.text [Input.id "genre", Input.attrs [placeholder "Enter your favorite genre",
                          onInput UpdatePreferencesGenre]]
                        ],
                        Form.group [] [
                          Form.label [for "actor"] [text "Actor: "],
                          Input.text [Input.id "actor", Input.attrs [placeholder "Enter your favorite actor",onInput UpdatePreferencesActor]]
                        ],
                         Button.button [ Button.success , Button.attrs [onClick MatchPercentage ]] [ text "Add movie preferences" ]
  ])
               , footer = Nothing
               }
         else
          Nothing
        )
    ]