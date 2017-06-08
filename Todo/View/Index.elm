
module Todo.View.Index exposing (..)

import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)

import Todo.Style.Style as Style
import Todo.Model.Model as Model
import Todo.Function.F as F
import Todo.View.Common exposing (..)

top : Model.M -> Html F.Func
top m = body [style [ ("backgroundColor","black") ] ] [
         
         div [ style [ ("text-align","center"),("padding-top","200px") ]  ]
             [
               button [ onClick ( F.SwitchTo Model.Page1 ) ] [text "start!!"]
             , div [  ] [ text m.page_info.title ]
                 
             ]
        ]
