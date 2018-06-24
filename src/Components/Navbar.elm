module Components.Navbar exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Bootstrap.Form as Form
import Bootstrap.Form.Input as Input
import Html.Events exposing (onInput)
import Msg exposing(..)
import Bootstrap.Form.Select as Select
import Bootstrap.Form.Checkbox as Checkbox
import Styles exposing (..)

genreOption genre =
    Select.item [value genre] [text genre]

navbar : Html Msg
navbar = 
  nav[class "navbar navbar-dark bg-dark" ]
  [
    a [ class "navbar-brand", href "#" ] [ text "PdeP-Flix" ],
      Form.formInline [Styles.navbarText] [
        Checkbox.custom [ Checkbox.id "kids", Checkbox.inline, Checkbox.onCheck KidsFilter ] "Kids Protection",
        Select.select [Select.onChange ChangeGenre] (List.map genreOption ["Genre", "terror", "suspenso"]),
        Input.text [ Input.attrs [class "mx-sm-3", placeholder "filter movies", onInput FilterName ]
      ] 
   ]
 ]
