let rec odd ls = 
  match ls with
    [] -> []
  | [x] -> [x]
  |  x::y::t -> x::odd t;;
  

odd [3;4;1;2;5] = [3;1;5];;
odd ["a";"b";"a";"b";"a"] = ["a";"a";"a"];;