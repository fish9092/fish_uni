(* Utilizzando riscorsione di coda e parametro di accumulazione, 
   definire la funzione init : int -> (int -> 'a) -> 'a list tale che
   init n f = [f 0; f 1; ...; f (n-1)]. *)

let init n f = 
  let rec aux acc cont= 
    if cont < 1  then acc else aux (f cont::acc) (cont-1)
  in aux [] n;;

(*new version*)
let init n f = 
  let rec aux acc cont= 
    if cont > n  then acc else aux (acc@[f cont]) (cont+1)
  in aux [] 1;;
