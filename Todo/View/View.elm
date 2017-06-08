
module Todo.View.View exposing (..)

import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)

import Todo.Style.Style as Style
import Todo.Model.Model as Model
import Todo.Function.F as F

import Todo.View.Index exposing (..)
import Todo.View.Page1 exposing (..)
import Todo.View.Page2 exposing (..)
import Todo.View.Page3 exposing (..)


import Http


v : Model.M -> Html F.Func
v m = dom m
      
dom : Model.M -> Html F.Func
dom m = 
    case m.page_info.page of
        Model.Top   ->
            top m
        Model.Page1 ->
            page1 m
        Model.Page2 ->
            page2 m
        Model.Page3 ->
            page3 m
                
                
        
        
        
