

module Todo.Model.Model exposing (..)


type alias M = 
    {    
        page_info : PageInfo, 
        todo   : Todo,
        tab1   : Tab1,
        query  : String
    }
    
type alias PageInfo = {
        
        page  : Page,
        title : String
        
    }
    
    
type Page = Top | Page1 | Page2 | Page3 
    

type alias Todo = {
        
        content : List Tab1
            
    }
    
    
type alias Tab1 = {

        name    : String ,
        candidate  : String ,
        todo : List String
        
    }
    
    
init_title : String
init_title = "default title"
             
             
init : M
init = M ( PageInfo Top "") (Todo [] ) (Tab1 "todo01" "" []) ""
       



