(*Definire combine : 'a list -> 'b list -> ('a * 'b) list 
  come definita nel modulo List; 
  la funzione solleva l'eccezione Invalid_argument se le due liste 
  hanno lunghezza diversa.
Esempi:
combine [] []=[]
combine [1;2;3] ["a";"b";"c"]=[(1, "a"); (2, "b"); (3, "c")]
combine [1;2] ["a";"b";"c"] Exception: Invalid_argument "combine"*)

exception Invalid_argument of string;;
let e = Invalid_argument "combine";;

let rec combine ls1 ls2 = match ls1 ,ls2 with 
    x1::t1, (x2::t2) -> (x1,x2)::combine t1 t2 
  | [],[] -> []
  | x,[] -> raise e
  | [],x -> raise e ;; 

combine [] []=[];;
combine [1;2;3] ["a";"b";"c"]=[(1, "a"); (2, "b"); (3, "c")];;
combine [1;2] ["a";"b";"c"]