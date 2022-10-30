let rec prod ls = 
  match ls with
    [] -> 1
  | x::t -> x*prod t;;

prod[2;4;3] = 24;;