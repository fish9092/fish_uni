let rec member el ls =
  match ls with
    x::t -> if x = el then true else member el t
  | [] -> false ;;

let insert el ls = if member el ls = true then ls else ls@[el] ;; 


(*!!!!!!*)
let rec inset_1 el = function
    hd::tl -> hd::if el = hd then tl else insert_1 el tl;
  | -> [el];;
insert 0 [2;4;3] = [2;4;3;0];;
insert 3 [2;4;3] = [2;4;3];;