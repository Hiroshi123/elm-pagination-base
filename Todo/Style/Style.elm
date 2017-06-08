
module Todo.Style.Style exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)


top_page_style : Html.Attribute msg
top_page_style =
    style
        [
         ("text-align", "center")
        ]

button_style : Html.Attribute msg
button_style =
    style
        
    [
      ("backgroundColor", "red")
    , ("color" , "#808080")
    , ("font-weight", "bold")
    , ("border-style", "none")
        
    ]
    
    
li_style : Html.Attribute msg
li_style  = style [ ("padding","5px,10px"),("border-bottom","1px solid #84b2e0") ]
                 
table_style : Html.Attribute msg
table_style = style [
                ("border","1px solid #000")
              , ("vertical-align","middle")
              , ("padding","0 10px")
              ]              
