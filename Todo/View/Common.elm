
module Todo.View.Common exposing (..)

import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)

import Todo.Style.Style as Style
import Todo.Model.Model as Model
import Todo.Function.F as F


tab_field : Html F.Func
tab_field =
    
    fieldset []
        [
         
         button [ Style.button_style , onClick (F.SwitchTo Model.Page1) ] [text "page1"] ,
         button [ Style.button_style , onClick (F.SwitchTo Model.Page2) ] [text "page2"] ,
         button [ Style.button_style , onClick (F.SwitchTo Model.Page3) ] [text "page3"] ,
         button [ Style.button_style , onClick (F.SwitchTo Model.Top  ) ] [text "back"]
             
        ]


