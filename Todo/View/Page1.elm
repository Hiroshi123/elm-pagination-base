
module Todo.View.Page1 exposing (..)

import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)

import Todo.Style.Style as Style
import Todo.Model.Model as Model
import Todo.Function.F as F

import Todo.View.Common exposing (..)

page1 : Model.M -> Html F.Func
page1 m = body [] [ div [] [
           
          tab_field
              
         , div [] [ text m.page_info.title ]
         , input  [ onInput F.Input ] []
         , button [ onClick F.Add ] [text "Add"]
         , button [ onClick F.Remove ] [text "Remove"]
         , button [ onClick F.Save ] [text "Save"]
         , input  [ onInput F.Input , placeholder  "name" ] []
         , ol [ ] (li_ele m.tab1.todo)
              
          ]
                  ]

li_ele : List String -> List (Html F.Func)
li_ele l =
    case l of
         [] -> []
         h::t -> ( li_ele t ) ++ [ li [ Style.li_style ] [ text h ] ]


