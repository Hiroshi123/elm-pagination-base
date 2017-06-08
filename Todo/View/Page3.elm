
module Todo.View.Page3 exposing (..)

import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)

import Todo.Style.Style as Style
import Todo.Model.Model as Model
import Todo.Function.F as F

import Random
import Bootstrap.Grid as Grid
import Bootstrap.Form.Input as Input

--import Http
import WebSocket
import Todo.View.Common exposing (..)

page3 : Model.M -> Html F.Func
page3 m = div [] [
           Input.text [Input.small]
         , tab_field 
         , text m.page_info.title
         , input [] []
         , table [ Style.table_style ] [
                
                 thead []
                     [
                      tr [ Style.table_style ]
                          
                       ( map add_th ["td1","td2","td3"] )
                          
                     ]
                     
                , tbody [] f3
                     
               ]
               
         , br [] []
               
          ]


record : Html F.Func
record = tr [ Style.table_style ] ( map add_td ["td1","td2","td3"] )
         
         
f3 : List (Html F.Func)
f3 = add 10 record
     
     
add : Int -> Html F.Func -> List (Html F.Func)
add a b =
    case a of
        0 -> [ ]
        _ -> [b] ++ (add (a-1) b)

initSeed : Int
initSeed = 31415           
             
pi : (Int , Random.Seed)
pi = Random.step (Random.int 0 100) (Random.initialSeed initSeed)


-- getRandomGif : String -> Cmd Msg
-- getRandomGif topic =
--     let url =
--             "https://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC&tag=" ++ topic
--     in
--         Http.send NewGif (Http.get url decodeGifUrl)

     
someL : Int
someL = reduce (+) 0 [1,2,3,4,5]
        
f1 : Int -> Int
f1 a = a + 3
       
someL2 : List Int
someL2 = map f1 [1,2,3,4,5]
         
cir : List ( Html F.Func )
cir = map add_td ["a","b","c"]
      
      
add_th : String -> Html F.Func
add_th a = th [ Style.table_style ] [text a]

      
add_td : String -> Html F.Func
add_td a = td [ Style.table_style ] [text a]
           
    
reduce: ( a -> a -> a ) -> a -> List a -> a
reduce f s a =
    case a of
        []   -> s
        h::t -> f h (reduce f s t)
                
                
map : (a -> b) -> List a -> List b
map f a =
    case a of
        [] -> []
        h::t -> [ f h ] ++ (map f t)
                
