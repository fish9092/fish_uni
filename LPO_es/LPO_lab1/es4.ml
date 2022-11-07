let rec odd ls = 
  match ls with 
    x::y::t -> x::odd t
  | l -> l;;
  

odd [3;4;1;2;5] = [3;1;5];;
odd ["a";"b";"a";"b";"a"] = ["a";"a";"a"];;