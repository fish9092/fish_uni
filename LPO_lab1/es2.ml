let rec member el ls =
  match ls with
    [] -> false
  | x::t -> if x = el then true else member el t;;
    
  
member 3 [2;4;3]=true;;
member 5 [2;4;3]=false;;