(*Definire cat : string list -> string come 
specializzazione di List.fold_left.*)

let cat = List.fold_left (^) "" ;;
    
cat ["This";" is ";"awesome!"] = "This is awesome!";;