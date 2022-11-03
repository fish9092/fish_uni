let rec ord_insert el ls  = 
  match ls with 
    x::t as lt -> if x = el then ls else 
      if x > el then el::lt else x::ord_insert el t
  | [] -> el::[] ;; 

ord_insert 0 [1;2;4;5] = [0;1;2;4;5];;
ord_insert 3 [1;2;4;5] = [1;2;3;4;5];;
ord_insert 7 [1;2;4;5] = [1;2;4;5;7];;
ord_insert 2 [1;2;4;5] = [1;2;4;5];;