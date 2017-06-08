

module Todo.Controller.Controller exposing (..)

import Todo.Model.Model as Model
import Todo.Function.F as F

c : F.Func -> Model.M -> Model.M
c f m =
    case f of
        F.SwitchTo Model.Page1 ->
            { m | page_info = ( Model.PageInfo Model.Page1 "page1" ) }
        F.SwitchTo Model.Page2 ->
            { m | page_info = ( Model.PageInfo Model.Page2 "page2" ) }
        F.SwitchTo Model.Page3 ->
            { m | page_info = ( Model.PageInfo Model.Page3 "page3" ) }
        F.SwitchTo Model.Top ->
            { m | page_info = ( Model.PageInfo Model.Top "" ) }
        F.Input a ->
            { m | tab1 = Model.Tab1 m.tab1.name a m.tab1.todo }
        F.Add ->
            case m.tab1.candidate of
                "" -> { m | tab1 = Model.Tab1 m.tab1.name "" m.tab1.todo }
                b  -> { m | tab1 = Model.Tab1 m.tab1.name "" ( [ m.tab1.candidate ] ++ m.tab1.todo ) }
        F.Remove ->
            { m | tab1 = Model.Tab1 m.tab1.name "" ( pop m.tab1.todo) }
        F.Save ->
            { m | todo = Model.Todo ( [ m.tab1 ] ++ m.todo.content ) , tab1 = Model.Tab1 m.tab1.name "" []  }
                
                
pop : List a -> List a
pop a =
    case a of
        f::l -> l
        [ ]  -> [ ]


