module Components.MoviePortrait exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Models exposing (..)
import Msg exposing(..)
import Styles exposing (..)
import Image exposing (Image)
import Bootstrap.Grid as Grid
import Bootstrap.Grid.Col as Col
import Bootstrap.Grid.Row as Row 
import Bootstrap.Button as Button
import Bootstrap.Badge as Badge


moviePortrait : Movie -> Grid.Column Msg
moviePortrait movie =
  Grid.col [] [
    div [Styles.portrait] [
        a [href movie.link] [Image.viewImg [Styles.poster] movie.poster]
        , div [] [ h4 [] [ text (movie.title ++ " "), Badge.badgeSuccess [] [ text(toString(movie.rating))]]]
        , div [] [text ("Likes: " ++ toString(movie.likes))]
        , div [] [text ("Match Percentage: " ++ toString(movie.matchPercentage) ++ "%")]
        , div [Styles.likeButton] [Button.linkButton [ Button.outlineDanger, Button.attrs [onClick <| IncrementLikes movie.id ]] [ text "❤️" ]]
    ]
  ]
  

moviePortraites : Model -> List (Grid.Column Msg)
moviePortraites model = List.map moviePortrait model.movies
