

module Todo.View.Page2 exposing (..)

import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)

import Todo.Style.Style as Style
import Todo.Model.Model as Model
import Todo.Function.F as F


import Todo.View.Common exposing (..)


li_ele2 : List Model.Tab1 -> List (Html F.Func)
li_ele2 l =
    case l of
        [] -> []
        h::t -> (li_ele2 t) ++ [li [] [text (toString h) ] ]

----------------------------------------------------------------
                 
page2 : Model.M -> Html F.Func
page2 m = div [] [
           
           tab_field 
         , div [] [ text m.page_info.title ]
         , ol [] (li_ele2 m.todo.content)
               
          ]


