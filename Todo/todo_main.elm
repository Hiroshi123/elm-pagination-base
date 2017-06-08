
module Cat exposing (..)
import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)

import Todo.Model.Model as Model
import Todo.Function.F as F
import Todo.View.View as View
import Todo.Controller.Controller as Controller


main =
    Html.beginnerProgram { model = Model.init , view = View.v, update = Controller.c }
        
        
        

        
